# miles-conda

Experimental anaconda package of C++ library with dependencies.

Notes: tested on OS then Ubuntu 26.04

## How to deply Conda package

conda build ./
ANACONDA_API_TOKEN=mi-xxxx anaconda -s anaconda upload location_of_app/miniforge3/conda-bld/linux-64/miles-cpp-0.0.1-xxxxxxx_x.conda

To install this package run one of the following:
conda install mile5::miles-cpp
