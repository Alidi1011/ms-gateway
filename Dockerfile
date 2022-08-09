FROM openjdk:8
ENV SPRING_PROFILES_ACTIVE prod
VOLUME /tmp
EXPOSE 8077
ADD ./target/ms_gateway-0.0.1-SNAPSHOT.jar ms-gateway.jar
ENTRYPOINT ["java","-jar","/ms-gateway.jar"]