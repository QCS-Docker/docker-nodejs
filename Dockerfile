FROM java:8-jdk
RUN apt-get update && apt-get install -y wget git curl zip make gcc g++
RUN git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
RUN bash -c ". ~/.nvm/nvm.sh; nvm install 0.10"
RUN nvm use 0.10
ENTRYPOINT ["/bin/bash", "-c"]
