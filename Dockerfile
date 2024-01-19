FROM maven:3.9.4-eclipse-temurin-17-alpine

WORKDIR /app

COPY .mvn/ .mvn

COPY mvnw pom.xml ./

COPY src ./src

RUN chmod +x mvn

RUN echo "unset MAVEN_CONFIG" >> /root/.bashrc

RUN ./mvn clean install -DskipTests

CMD [ "./mvn", "spring-boot:run" ]