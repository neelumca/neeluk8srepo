FROM neelumca/jdk17_online:v1.0 AS builder
RUN ls
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/neelumca/neeluk8srepo.git
RUN cd /ksapp/neeluk8srepo/service2

