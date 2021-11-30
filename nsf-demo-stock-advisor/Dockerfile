FROM tomcat:7.0.77-jre8

#add application jar
ADD target/*.jar /opt/nsf/

#add nsf agent jar and config file
RUN mkdir -p /opt/nsf && cd /opt/nsf && \
    wget "http://console.v190808.163skiff.com/download/nsf-agent-v2.5.6-1daf42fe-20190916-162559.jar" -O nsf-agent.jar
ADD nsf.yml /opt/nsf/nsf.yml

#add apm agent jar and config file
RUN mkdir -p /opt/apm && cd /opt/apm && \
    wget http://console-cust92.netease.com/download/napm/skywalking-napm-bin-8.0.0-latest.tar.gz -O skywalking-napm-bin-8.0.0-latest.tar.gz
 -O napm-java-agent.tar.gz && \
    tar zxvf napm-java-agent.tar.gz && \
    cd ./napm-java-agent/conf && \
    echo "collector.backend_service=apm-otel-collector-cust92.netease.com:11800" >> agent.properties && \
    echo "agent.authentication=189-ycg-demo" >> agent.properties && \
    echo "agent.service_name=webserver" >> agent.properties

#add run command
ADD run.sh  /opt/nsf/
RUN chmod a+x /opt/nsf/run.sh

CMD ["/opt/nsf/run.sh"]
