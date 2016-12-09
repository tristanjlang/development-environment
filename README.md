# development-environment
This repository consists of setup scripts and configuration files for my preferred development environment

## Notes on git remote repo configuration
* github - use default
* bitbucket
```
[remote "origin"]
	url = ssh://git@$host/$projectName/$repoName.git
	fetch = +refs/heads/*:refs/remotes/origin/*
[submodule "ext/evmjit"]
	url = ssh://git@$host/$projectName/$repoName.git
...
```

## installing linux dependencies
```
sudo vim /etc/apt/sources.list.d/llvm.list # insert the following
# 3.7 
deb http://apt.llvm.org/trusty/ llvm-toolchain-trusty-3.7 main
deb-src http://apt.llvm.org/trusty/ llvm-toolchain-trusty-3.7 main

# for mounting lvm volumes
sudo vim /etc/fstab # add the following on a new line
/dev/xvdb       /mnt    auto    defaults,nobootwait,comment=cloudconfig 0       2

# installing compilers and go dependnecies
sudo add-apt-repository ppa:george-edison55/cmake-3.x
sudo apt-get update

sudo apt-get install -y llvm-3.7 libedit-dev clang-3.7 bison cmake htop xfsprogs lvm2 libxmu-dev libxmu-headers freeglut3-dev libxext-dev libxi-dev
```
