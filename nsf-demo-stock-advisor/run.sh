#!/usr/bin/env bash
java -javaagent:/opt/nsf/nsf-agent.jar=nsf -jar -javaagent:/opt/nsf/skywalking-agent.jar -Dskywalking_config=/opt/nsf/config/agent.config /opt/nsf/nsf-demo-stock-advisor-1.0-SNAPSHOT.jar
