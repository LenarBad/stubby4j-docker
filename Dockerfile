FROM alpine:latest
USER root

RUN apk update
RUN apk fetch openjdk8
RUN apk add openjdk8

RUN wget http://central.maven.org/maven2/io/github/azagniotov/stubby4j/6.0.1/stubby4j-6.0.1.jar -O /usr/local/stubby4j.jar

EXPOSE 8889 8882

CMD java -jar /usr/local/stubby4j.jar -d no.yaml --location "0.0.0.0" --watch
