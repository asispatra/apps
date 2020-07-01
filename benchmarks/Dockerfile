FROM registry.access.redhat.com/ubi8/s2i-base


RUN yum install -y python38 && \
    yum -y clean all --enablerepo='*'


RUN wget https://raw.githubusercontent.com/asispatra/asisapps/master/benchmarks/server.py -O server.py && \
    wget https://raw.githubusercontent.com/asispatra/asisapps/master/benchmarks/client.py -O client.py 

RUN wget https://raw.githubusercontent.com/asispatra/asisapps/master/benchmarks/init.sh -O init.sh
#COPY ./init.sh .

RUN git clone https://github.com/parthsl/schbench && cd schbench/schbench && make
#RUN git clone https://github.com/axboe/fio.git && cd fio && ./configure && make && make install

RUN chmod 777 .

EXPOSE 9999

USER default

ENTRYPOINT [ "bash", "init.sh" ]
