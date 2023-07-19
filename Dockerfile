FROM openjdk:11
RUN apt-get update && apt-get install -y maven
WORKDIR /carina-demo
COPY ./src /carina-demo/src
COPY ./pom.xml /carina-demo/pom.xml
ENV SUITE=web
ENTRYPOINT ["mvn", "test", "-Dsuite=${SUITE}"]