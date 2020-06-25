FROM registry.access.redhat.com/ubi8/s2i-base


RUN yum install -y python38 firewalld && \
    yum -y clean all --enablerepo='*'


RUN wget https://raw.githubusercontent.com/asispatra/asisapps/master/benchmarks/server.py -O server.py && \
    wget https://raw.githubusercontent.com/asispatra/asisapps/master/benchmarks/client.py -O client.py && \
    wget https://raw.githubusercontent.com/asispatra/asisapps/master/benchmarks/init.sh -O init.sh

RUN git clone https://github.com/parthsl/schbench && cd schbench/schbench && make
RUN git clone https://github.com/axboe/fio.git && cd fio && ./configure && make && make install

EXPOSE 9999

USER default

#ENTRYPOINT [ "python3", "-u", "server.py" ]
ENTRYPOINT [ "bash", "init.sh" ]
