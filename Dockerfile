FROM cmptech/auto_ubuntuessential_nodejs_sharessl

Maintainer Wanjo Chan ( http://github.com/wanjochan/ )

#http://npm.taobao.org/mirrors/node/latest

RUN apt update && apt install -y python build-essential && apt autoremove -y && rm -rf /var/lib/apt/lists/
RUN echo export PATH=/\$NODE_VERSION/bin:\$PATH >> /node_env.sh

RUN . /node_env.sh \
&& npm -v \
&& npm install -g node-gyp

RUN . /node_env.sh \
&& node-gyp install
