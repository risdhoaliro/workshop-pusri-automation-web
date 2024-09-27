# automation-website-wagginton

# Robot Framework
## Install homebrew
```sh
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Install Python
```sh
brew install python
```
### Check Python Version
```sh
python --version
```

## Install pip
```sh
sudo easy_install pip
```
Install this via terminal if problems found during pip installation
`curl https://bootstrap.pypa.io/get-pip.py | python`
### Check pip Version
```sh
pip --version
```

## Install Robot Framework
```sh
pip install robotframework
```

## Install Robot Framework Library
```sh
pip install robotframework-seleniumlibrary
```
Documentation for SeleniumLibrary
> http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

## Install Pabot paraller execution
```sh
 pip install -U robotframework-pabot
```
Documentation for Pabot
> https://github.com/mkorpela/pabot

## Install chromedriver
```sh
brew install chromedriver
```

## Install geckodriver
```sh
brew install geckodriver
```

## Run Robot
> Run Specific Robot File
```sh
robot -d Results --report index.html /path/path/file.robot
```
> Run Robot Specific Tags
```sh
robot -d Results --report index.html --include tagName /path/path/folder/
```
> Run Specific Test Case from a Test Suite
```sh
robot -d Results --report index.html -t "test case name here" /path/path/file.robot
```
> Run Specific Variable Environment
```sh
robot --variable environment:staging /path/path/file.robot
```
> Run Parallel Test Cases
```sh
pabot /path
```
  