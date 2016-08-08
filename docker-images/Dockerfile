FROM alpine:3.3

# Install java
RUN apk --update add openjdk8

ENV GRADLE_VERSION 2.3
ENV GRADLE_HOME /usr/local/gradle
ENV PATH ${PATH}:${GRADLE_HOME}/bin
ENV GRADLE_USER_HOME /gradle

# Install gradle
RUN wget  https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip && \
    unzip gradle-$GRADLE_VERSION-bin.zip && \
    rm -f gradle-$GRADLE_VERSION-bin.zip && \
    ln -s gradle-$GRADLE_VERSION gradle

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre

ENV PATH ${PATH}:${JAVA_HOME}/bin

# Install bash
RUN apk add --update bash && rm -rf /var/cache/apk/*

EXPOSE 8080

WORKDIR /app

CMD ["./gradlew", "bootrun"]