# Easybuild/lmod notes

Lmod is a system of loadable modules. It is used on many HPC systems to allow the user to choose the software and libraries they load.
It allows multiple versions of the same program to be installed. 

EasyBuild is a program which can compile common software and automatically creates module files when it does this. 

## Installing lmod

Run the command `apt install lmod`

## Install easybuild

This will only install for the current user

`pip install easybuild`

Running it with sudo will probably install it for all users.

## Install easybuild as a module

Not sure if this is required, but it means we have another independent copy of EasyBuild.

`eb --install-latest-eb-release --prefix $HOME/EasyBuild`


## Using Easybuild

### find an easybuild package

`eb -S packagename`

### dryrun package install

`eb packagename-version.eb -Dr` (take the full basename from the output of eb -S)

### really install a package

`eb packagename-version.eb -r`

## Configuring EasyBuild

The main config file is .config/easybuild/config.cfg

### Create a custom easybuild config

create .config/easybuild/config.cfg

add a [config] section and then add config options, e.g.

```[config]
job-cores=5
modules-tool=Lmod
```

test the config with

`eb --show-config`

Lines with a (D) are defaults, (E) enviroment variables and (F) config file.

### Set easybuild to store modules somewhere else

Add the following to your config:
```
buildpath = ./EasyBuild/build
sourcepath = ./EasyBuild/sources
installpath = /sharedfs/modules
```


## Tell lmod where to find the modules

You can tempoarily set where lmod gets modules from by running

`module use ~/.local/easybuild/modules/all`

DON'T module use `~/.local/easybuild/modules/`, this results in confusion resolving module names

This can be made permanent by adding entries into `/etc/lmod/modulespath`

