FROM tomcat:7.0.77-jre8

#add application jar
ADD ./nsf-demo-stock-viewer/target/*.jar /opt/nsf/

#add nsf agent jar and config file
RUN mkdir -p /opt/nsf && cd /opt/nsf && \
    wget "http://console.qz.sf.163.com/download/nsf/nsf-boot.jar" -O nsf-agent.jar
ADD ./nsf-demo-stock-viewer/nsf.yml /opt/nsf/nsf.yml

#add apm agent jar and config file
RUN mkdir -p /opt/apm && cd /opt/apm && \
    wget "http://console.qz.sf.163.com/download/napm/skywalking-napm-bin-8.10.0-latest.tar.gz" -O skywalking-napm-bin-8.10.0-latest.tar.gz && \
    tar zxvf skywalking-napm-bin-8.10.0-latest.tar.gz && \
    cd ./skywalking-napm-bin-8.10.0-latest/agent/config && \
    echo "collector.backend_service=http://apm-collector.qz.sf.163.com" >> napm-agent.properties && \
    echo "agent.authentication=MTgtc29sdXRpb24" >> agent.config && \
    echo "agent.service_name=ycg-stock-viewer" >> agent.config

#add run command
ADD ./nsf-demo-stock-viewer/run.sh  /opt/nsf/
RUN chmod a+x /opt/nsf/run.sh

CMD ["/opt/nsf/run.sh"]
