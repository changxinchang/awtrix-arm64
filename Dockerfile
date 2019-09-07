FROM arm64v8/adoptopenjdk:11
RUN mkdir -p /data/ &&\
    cd /data/ &&\
    wget https://blueforcer.de/downloads/awtrix.jar
WORKDIR /data
VOLUME ["/data/config"]
VOLUME ["/data/plugins"]
ENTRYPOINT ["java", "-jar", "/data/awtrix.jar"]
