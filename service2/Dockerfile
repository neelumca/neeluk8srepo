FROM neelumca/jdk17_online:v1.0

#initilizing dependencies
COPY /src  ./src
COPY pom.xml .
RUN rm -rf install.sh

# Build Mvn
RUN mvn install deploy