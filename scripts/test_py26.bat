SET PATH=C:\MinGW\bin;C:\Python26;C:\Python26\Scripts;%PATH%
del pandas\_tseries.pyd
del pandas\_sparse.pyd
del pandas\src\tseries.c
del pandas\src\sparse.c
python setup.py clean
python setup.py build_ext -c mingw32 --inplace
nosetests pandas