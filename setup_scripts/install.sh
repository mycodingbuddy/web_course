#!/bin/sh

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    platform='linux'
elif [[ "$unamestr" == 'MacOS' ]]; then
    platform='macos'
fi

if [[ $platform == 'linux' ]]; then
    echo "Detected Linux OS"

    # install python2.7
    sudo apt-get install python2.7
    # install pip
    sudo apt-get install pip
    # install mysql client dev
    sudo apt-get install libmysqlclient-dev
    # install virtualenvwrapper so we can create a virtual environment
    pip install virtualenvwrapper 
    # active virtualenv commands
    source /usr/local/bin/virtualenvwrapper.sh
    # create a brandnew virtual env
    mkvirtualenv eventbuddy_env
    # switch to the created virtual environment
    workon eventbuddy_env
    # install all required python packages within the virtual environment
    pip install -i ../requirements.txt

    echo "Done..."
elif [[ $platform == 'macos' ]]; then
    echo "Detected Mac OS"

    # install python2.7
    brew install python2.7
    # install pip
    brew install pip
    # install mysql client dev
    brew install mysql_server 
    # install virtualenvwrapper so we can create a virtual environment
    pip install virtualenvwrapper
    # active virtualenv commands
    source /usr/local/bin/virtualenvwrapper.sh
    # create a brandnew virtual env
    mkvirtualenv eventbuddy_env
    # switch to the created virtual environment
    workon eventbuddy_env
    # install all required python packages within the virtual environment
    pip install -r ../requirements.txt

    echo "Done..."

fi


