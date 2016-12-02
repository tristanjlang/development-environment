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
