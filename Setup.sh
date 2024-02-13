#!/bin/bash

cd twsapi_macunix.1019.02/IBJts/source/pythonclient/
pip install virtualenv
virtualenv tws_env
source tws_env/bin/activate
pip install pandas
pip install ib-insync
pip install ipynb
python setup.py sdist
python setup.py bdist_wheel
python3 -m pip install --user --upgrade dist/ibapi-10.19.2-py3-none-any.whl
pip install jupyter
pip install ipykernel
python -m ipykernel install --user --name tws_env --display-name "TWS Environment"
jupyter lab
