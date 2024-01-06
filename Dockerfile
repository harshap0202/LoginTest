FROM maven:3.8.4-openjdk-17-slim AS build
COPY . . 
RUN mvn clean package -DskipTests

FROM openjdk:17-slim
COPY --from=build /target/remote-0.0.1-SNAPSHOT.jar remote.jar
EXPOSE 9040
ENTRYPOINT ["java","-jar","remote.jar"]