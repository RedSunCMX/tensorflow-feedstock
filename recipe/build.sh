#!/bin/bash

# install using pip from the whl file provided by Google

if [ `uname` == Darwin ]; then
    if [ "$PY_VER" == "2.7" ]; then
        pip install --no-deps https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-0.11.0rc2-py2-none-any.whl
    else
        pip install --no-deps https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-0.11.0rc2-py3-none-any.whl
    fi
fi

if [ `uname` == Linux ]; then
    if [ "$PY_VER" == "2.7" ]; then
        pip install --no-deps https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0rc2-cp27-none-linux_x86_64.whl
    elif [ "$PY_VER" == "3.4" ]; then
        pip install --no-deps https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0rc2-cp34-cp34m-linux_x86_64.whl
    elif [ "$PY_VER" == "3.5" ]; then
        pip install --no-deps https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0rc2-cp35-cp35m-linux_x86_64.whl
    fi
fi
