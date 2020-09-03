FROM python:3.8-slim-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV PIP_PACKAGE openpyxl xlrd seaborn bokeh jupyterlab pandas

RUN apt-get update \
  # dependencies for building Python packages
  && apt-get install -y build-essential


# pandas-datareader scikit-learn statsmodels


# install python package
RUN pip install --upgrade pip \
    && pip --no-cache-dir install -U pip setuptools wheel \
    && pip --no-cache-dir install ${PIP_PACKAGE}

COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

VOLUME /opt/
EXPOSE 8888

CMD ["jupyter", "lab"]
