FROM maven:3-jdk-11 as deps
COPY ./spring-security-conference/pom.xml .
RUN mvn clean dependency:go-offline

FROM maven:3-jdk-11 as builder
COPY ./spring-security-conference .
COPY --from=deps /root/.m2 /root/.m2
RUN mvn clean -o package -D skipTests
RUN mv /target/conference-0.0.1-SNAPSHOT.war /target/conference_war.war 

FROM tomcat:9
COPY --from=builder /target/conference_war.war /usr/local/tomcat/webapps/
