# TaiBIF Data Workspace

Data Processing Basic Environment


## Quick start

### 1) build docker image
```bash
$ docker build -t taibif-data-workspace .
```

### 2) run docker container
```bash
$ docker run --name taibif-data-workspace-container -p 8888:8888 -v $PWD/data:/opt taibif-data-workspace
```

### 3) go 

Open browser and input `127.0.0.1:8888`, you will see jupyterlab.

## packages
- python3.8
- jupyter (jupyterlab)
- pandas


## example

- download TaiwanSpecies_xxx.csv from TaiCol (taicol.tw)
- put TaiwanSpecies_xxx.csv in data folder
- open `example.ipynb`
- test pandas 
