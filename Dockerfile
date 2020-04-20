FROM jupyter/minimal-notebook:latest

USER root
RUN apt-get update -y
RUN apt-get install default-jdk -y
RUN pip install kotlin-jupyter-kernel
RUN jupyter notebook --generate-config -y
RUN echo "c.NotebookApp.password='sha1:b65c3b24b6e9:2f1e15ee3541f6f79e63cd68671b4b15035a097f'">>/home/jovyan/.jupyter/jupyter_notebook_config.py