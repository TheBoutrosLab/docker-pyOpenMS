# docker-pyOpenMS

Docker image for [pyOpenMS](https://pyopenms.readthedocs.io/), the Python
bindings for the OpenMS mass-spectrometry analysis library.

This image is maintained by the Boutros Lab and installs pyOpenMS with
Matplotlib and Seaborn in a dedicated Miniforge/Conda environment on an Ubuntu
runtime image.

## Version

| Component | Version |
|-----------|---------|
| pyOpenMS | 3.5.0 |
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
3. Bioconda package index: <https://bioconda.github.io/recipes/pyopenms/README.html>

## License

Author: Chenghao Zhu

docker-pyOpenMS is licensed under the GNU General Public License version 2. See
the file [LICENSE](LICENSE) for the terms of the GNU GPL license.

docker-pyOpenMS provides a containerized Python environment for OpenMS-based
mass-spectrometry analysis. Bundled software retains its respective upstream
license.

Copyright (C) 2026 Sanford Burnham Prebys Medical Discovery Institute
("Boutros Lab") All rights reserved.

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
