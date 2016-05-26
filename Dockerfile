FROM centos
RUN yum install -y git man
RUN git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
RUN bash -c ". ~/.nvm/nvm.sh; nvm install 0.10"
RUN nvm use 0.10
ENTRYPOINT ["/bin/bash", "-c"]
