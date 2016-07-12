FROM java:8
MAINTAINER u6k.apps@gmail.com

RUN mkdir -p /usr/local/src/
WORKDIR /usr/local/src/

RUN curl -OL https://downloads.typesafe.com/typesafe-activator/1.3.10/typesafe-activator-1.3.10-minimal.zip && \
    unzip typesafe-activator-1.3.10-minimal.zip && \
    mkdir -p /opt/ && \
    mv activator-1.3.10-minimal/ /opt/activator && \
    chmod a+x /opt/activator/bin/activator && \
    ln -s /opt/activator/bin/activator /usr/local/bin/activator

WORKDIR /root/

RUN activator new my-app minimal-scala && \
    cd my-app/ && \
    activator run && \
    cd .. && \
    rm -rf my-app/

CMD ["/bin/bash"]
