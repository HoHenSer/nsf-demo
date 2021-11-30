#!/usr/bin/env bash
java -javaagent:/opt/nsf/nsf-agent.jar=nsf -javaagent:/opt/npm/napm-java-agent/skywalking-agent.jar -Dskywalking_config=/opt/npm/napm-java-agent/config/agent.config -jar /opt/nsf/nsf-demo-stock-advisor-1.0-SNAPSHOT.jar
