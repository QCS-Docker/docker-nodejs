FROM centos
RUN yum install -y git man
RUN git clone --depth 1 https://github.com/creationix/nvm.git ~/.nvm
RUN bash -c ". /.nvm/nvm.sh; nvm install 0.10"
RUN nvm use 0.10
ENTRYPOINT ["/bin/bash", "-c"]
