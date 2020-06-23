FROM registry.access.redhat.com/ubi8/s2i-base


RUN yum install -y python38 && \
    yum -y clean all --enablerepo='*'

#COPY ./server.py .
#COPY ./ready_schbench.sh .

RUN wget 

RUN git clone https://github.com/parthsl/schbench && cd schbench/schbench && make
RUN git clone https://github.com/axboe/fio.git && cd fio && ./configure && make && make install

EXPOSE 9999

USER default

ENTRYPOINT [ "python3", "server.py" ]
