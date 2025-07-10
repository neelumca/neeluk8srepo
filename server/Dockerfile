FROM neelumca/jdk17_online:v1.0 AS builder

#initilizing dependencies
COPY /src  ./src
COPY pom.xml .

# Build Mvn
RUN mvn install deploy

FROM neelumca/jdk17:latest
COPY --from=builder /ksapp/target/*.jar .




