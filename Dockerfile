#open jdk 환경 구성
FROM openjdk:8-jdk-alpine

# JAR_FILE이라는 변수에 메이븐 jar 파일 생성 경로 대입
ARG JAR_FILE=target/*.jar

# jar 파일 생성 경로에 있는 거 app.jar로 복사
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]