#!/bin/bash

wget http://central.maven.org/maven2/io/github/azagniotov/stubby4j/6.0.1/stubby4j-6.0.1.jar -O stubby4j.jar
java -jar stubby4j.jar -d no.yaml --location "0.0.0.0" --watch
