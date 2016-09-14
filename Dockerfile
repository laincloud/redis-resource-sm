FROM laincloud/centos-redis-python:redis3.0.7


COPY . /lain/app/ 


WORKDIR /lain/app/


RUN ( mkdir -p $GOPATH/src/github.com/laincloud ) && ( ln -s /lain/app $GOPATH/src/github.com/laincloud/redis-service-sm ) && ( ls -1 | xargs rm -rf )
