FROM neelumca/jdk17_online:v1.0 AS builder
RUN ls
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/neelumca/neeluk8srepo.git
RUN cd /ksapp/neeluk8srepo/service2 && mvn deploy

FROM neelumca/jdk17:latest
COPY --from=builder /ksapp/neeluk8srepo/service2/target/*.jar neeser2.jar
EXPOSE 9002
ENTRYPOINT [ "java","-jar","neeser2.jar"]