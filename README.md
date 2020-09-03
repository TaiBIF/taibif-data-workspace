# TaiBIF Data Workspace

Data Processing Basic Environment


## Install

### 1) build docker image
```bash
$ docker build -t taibif-data-workspace .
```

### 2) run docker container
```bash
$ docker run --name taibif-data-workspace-container -p 8888:8888 -v $PWD/data:/opt taibif-data-workspace
```

### packages
- python3.8
- jupyter (jupyterlab)
- pandas


### example

 *example.ipynb* in data folder
