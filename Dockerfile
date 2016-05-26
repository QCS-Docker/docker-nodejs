FROM java:8-jdk
RUN apt-get update && apt-get install -y wget git curl zip make gcc g++ source

ENV NVM_DIR /usr/local/nvm  
ENV NODE_VERSION 0.10.38  
ENV WORK_DIR /workspace

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash \  
    && source $NVM_DIR/nvm.sh \
    && nvm install v$NODE_VERSION \
    && nvm use v$NODE_VERSION \
    && nvm alias default v$NODE_VERSION

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules  
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH

# 设置工作目录
WORKDIR $WORK_DIR

EXPOSE 3000

CMD node  $WORK_DIR/app.js
