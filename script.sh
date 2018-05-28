#!/bin/bash
# Script file should place all the required log files into their respective folders
# 
# /udis/parsers/parser-consumer/logs/ParserConsumer.log
# /udis/fetchers/fetcher-consumer/logs/FetcherConsumer.log
# /var/lib/tomcat8/logs/catalina.out


# 1st step 
# Make all the required folders
sudo mkdir -p /udis/parsers/parser-consumer/logs/
sudo mkdir -p /udis/fetchers/fetcher-consumer/logs/
sudo mkdir -p /var/lib/tomcat8/logs

# 2nd Step
# Make sure all created folders have required permissions
sudo chown -R ubuntu:ubuntu /udis/
sudo chown -R ubuntu:ubuntu /var/lib/tomcat8/

# 3rd Step
# Place all the log files into their respective folders
sudo mv ParserConsumer.log /udis/parsers/parser-consumer/logs/ParserConsumer.log
sudo mv FetcherConsumer.log /udis/fetchers/fetcher-consumer/logs/FetcherConsumer.log
sudo mv catalina.out /var/lib/tomcat8/logs/catalina.out

# 4th Step
# Repeat 2nd Step
sudo chown -R ubuntu:ubuntu /udis/
sudo chown -R ubuntu:ubuntu /var/lib/tomcat8/