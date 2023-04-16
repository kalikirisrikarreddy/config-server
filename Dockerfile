FROM amazoncorretto:17

ENV APP_HOME /opt/config-server/
ENV JAR_FILE config-server.jar

WORKDIR $APP_HOME

COPY build/libs/config-server.jar $APP_HOME
COPY startConfigServer.sh $APP_HOME

EXPOSE 8888

ENTRYPOINT "./startConfigServer.sh"