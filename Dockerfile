FROM jboss/wildfly:9.0.2.Final
MAINTAINER Jalel HAZBRI "jalel.hazbri@gmail.com"

# ENV VARIABLES 
ENV WILDFLY_HOME /opt/jboss/wildfly
ENV WILDFLY_VERSION 9.0.2.Final

# Add console admin user
RUN ${WILDFLY_HOME}/bin/add-user.sh mjhazbri mjhazbri  --silent

# Ports
EXPOSE 8080 9990

# Volumes
#VOLUME ${WILDFLY_HOME}/standalone/deployments/
#VOLUME ${WILDFLY_HOME}/standalone/log/

# RUN script
COPY start-wildfly.sh ${WILDFLY_HOME}/bin/start-wildfly.sh
USER root
RUN chmod +x ${WILDFLY_HOME}/bin/start-wildfly.sh

ENTRYPOINT ["sh", "-c", "${WILDFLY_HOME}/bin/start-wildfly.sh"]
