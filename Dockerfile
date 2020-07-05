FROM jenkins/ssh-agent

# install python
RUN apt-get update  && apt-get install -y \
    python \
    python-pip

RUN apt install default-jdk -y

# install dependencies
RUN pip install ipython \
    ipykernel \
    jupyter-client \
    protobuf \
    grpcio
 
