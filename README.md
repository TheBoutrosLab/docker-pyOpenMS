# docker-pyOpenMS

Docker image for [pyOpenMS](https://pyopenms.readthedocs.io/), the Python
bindings for the OpenMS mass-spectrometry analysis library.

This image is maintained by the Boutros Lab and installs the official pyOpenMS
wheel with Matplotlib and Seaborn in a dedicated Miniforge/Conda environment
on an Ubuntu runtime image. The build verifies that `BrukerTimsFile` is
available and can be instantiated in the final runtime image. Loading a real
Bruker `.d` acquisition must be validated by the consuming QC pipeline's
integration tests, where the test data is maintained.

## Version

| Component | Version |
|-----------|---------|
| pyOpenMS | 3.6.0 |
| Miniforge | 26.1.1-2 |
| Ubuntu | 24.04 |

## Discussions

- [Issue tracker](https://github.com/TheBoutrosLab/docker-pyOpenMS/issues) to report errors and enhancement ideas.
- Discussions can take place in [docker-pyOpenMS Discussions](https://github.com/TheBoutrosLab/docker-pyOpenMS/discussions).
- [docker-pyOpenMS pull requests](https://github.com/TheBoutrosLab/docker-pyOpenMS/pulls) are also open for discussion.

## Contributors

Please see the list of [Contributors](https://github.com/TheBoutrosLab/docker-pyOpenMS/graphs/contributors) at GitHub.

## References

1. Röst HL, Schmitt U, Aebersold R, Malmström L. pyOpenMS: a Python-based interface to the OpenMS mass-spectrometry algorithm library. *Proteomics*. 2014;14(1):74-77. doi: [10.1002/pmic.201300246](https://doi.org/10.1002/pmic.201300246)
2. pyOpenMS documentation: <https://pyopenms.readthedocs.io/>
3. pyOpenMS package index: <https://pypi.org/project/pyopenms/>

## License

Author: Chenghao Zhu

The code and container recipes in docker-pyOpenMS are licensed under the
BSD 3-Clause License (`BSD-3-Clause`). See [LICENSE](LICENSE) for the terms.

Bundled software retains its respective upstream license.

Copyright (C) 2026 Sanford Burnham Prebys Medical Discovery Institute ("Boutros Lab")
