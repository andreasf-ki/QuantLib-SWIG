Compile for python3 and x64:
1) Open cmd for WinSDK
2) Set env

set BASE_PY=C:\Users\Andreas\Documents\Bin\WPy64-3720_b\python-3.7.2.amd64
set QL_DIR=C:\Users\Andreas\Documents\Source\GitRepos\QuantLib

set PATH=C:\Users\Andreas\Documents\Bin\swigwin-4.0.2;%PATH%;
set INCLUDE=%INCLUDE%;C:\Users\Andreas\Documents\Lib\boost_1_63_0;C:\Users\Andreas\Documents\Lib\boost_1_63_0\boost
set LIB=%LIB%;%QL_DIR%\lib;C:\Users\Andreas\Documents\Lib\boost_1_63_0\lib64-msvc-14.0

set PYTHON_INCLUDE=%BASE_PY%\include
set PYTHON_LIB=%BASE_PY%\libs\python37.lib

cd C:\Users\Andreas\Documents\Source\GitRepos\QuantLib-SWIG_latest\Python

3) In QLib-SWIG/Python run
python setup.py wrap
python setup.py build

    python setup.py test
    python setup.py install --prefix=C:\Users\Andreas\Documents\Source\Snippets\QL
	
# call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.Cmd" /x64 /release
# set DISTUTILS_USE_SDK=1
