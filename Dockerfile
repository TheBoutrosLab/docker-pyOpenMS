ARG MINIFORGE_VERSION=26.1.1-2
ARG UBUNTU_VERSION=24.04
ARG CONDA_ENV_PATH=/opt/conda/envs/pyopenms

FROM condaforge/miniforge3:${MINIFORGE_VERSION} AS builder

ARG CONDA_ENV_PATH

ARG PYOPENMS_VERSION=3.6.0
ARG PYTHON_VERSION=3.13

RUN mamba create -qy -p ${CONDA_ENV_PATH} \
    -c conda-forge \
    python=${PYTHON_VERSION} \
    pip \
    matplotlib \
    seaborn && \
    ${CONDA_ENV_PATH}/bin/python -m pip install --no-cache-dir \
        --only-binary=pyopenms \
        "pyopenms==${PYOPENMS_VERSION}" && \
    ${CONDA_ENV_PATH}/bin/python -c \
        'import pyopenms as oms; assert hasattr(oms, "BrukerTimsFile"), "BrukerTimsFile is missing"; oms.BrukerTimsFile()' && \
    mamba clean -afy

# Deploy the target tools into a base image
FROM ubuntu:${UBUNTU_VERSION} AS final

ARG CONDA_ENV_PATH

COPY --from=builder ${CONDA_ENV_PATH} ${CONDA_ENV_PATH}

ENV CONDA_ENV_PATH="${CONDA_ENV_PATH}" \
    PATH="${CONDA_ENV_PATH}/bin:${PATH}"

RUN python3 -c \
    'import pyopenms as oms; assert hasattr(oms, "BrukerTimsFile"), "BrukerTimsFile is missing"; oms.BrukerTimsFile()'

# Add a new user/group called bldocker
RUN groupadd -g 500001 bldocker && \
    useradd -r -u 500001 -g bldocker bldocker

# Change the default user to bldocker from root
USER bldocker

LABEL   maintainer="Chenghao Zhu <czhu@sbpdiscovery.org>" \
        org.opencontainers.image.source=https://github.com/TheBoutrosLab/docker-pyOpenMS
