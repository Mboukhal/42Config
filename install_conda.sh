#!/bin/bash

MYPATH="/goinfre/$USER/miniconda3"

if [ -d "$MYPATH" ] 
then
    echo "$MYPATH Alredy exist :) !"
	echo -e "\nUse: conda activate 42AI-mboukhal"
else
    #curl -LO "https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh"
    sh /Users/mboukhal/script/Miniconda3-latest-MacOSX-x86_64.sh -b -p $MYPATH
    $MYPATH/bin/conda init bash
    $MYPATH/bin/conda config --set auto_activate_base false
    source ~/.bash_profile
    conda create --name 42AI-$USER python=3.7 jupyter pandas pycodestyle numpy
    conda info --envs
    conda activate 42AI-$USER
    which python
    python -V
    python -c "print('Hello World!')"
fi

