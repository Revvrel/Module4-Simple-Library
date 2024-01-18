FROM maven:3.9.4-eclipse-temurin-17-alpine

WORKDIR /app

COPY .mvn/ .mvn

COPY mvnw pom.xml ./

COPY src ./src

RUN ./mvnw install -DskipTests

CMD [ "./mvnw", "spring-boot:run" ]