FROM alpine:3.3

# Install java
RUN apk --update add openjdk8

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre

ENV PATH ${PATH}:${JAVA_HOME}/bin

# Install bash
RUN apk add --update bash && rm -rf /var/cache/apk/*

EXPOSE 8080

WORKDIR /app

CMD ["./gradlew", "bootrun"]