FROM neelumca/jdk17_online:v1.0 AS builder
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/neelumca/neeluk8srepo.git
RUN cd /ksapp/neeluk8srepo/service1 && mvn install deploy

FROM neelumca/jdk17:latest
COPY --from=builder /ksapp/neeluk8srepo/service1/target/*.jar neelumcaservice1.jar
EXPOSE 9001
ENTRYPOINT [ "java","-jar","neelumcaservice1.jar" ]