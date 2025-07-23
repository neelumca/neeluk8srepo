FROM neelumca/jdk17_online:v1.0 AS builder
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/neelumca/neeluk8srepo.git
RUN cd /ksapp/neeluk8srepo/server && mvn install deploy

FROM neelumca/jdk17:latest
COPY --from=builder /ksapp/neeluk8srepo/server/target/*.jar neelumcaser.jar
EXPOSE 8761
ENTRYPOINT [ "java","-jar","neelumcaser.jar" ]

