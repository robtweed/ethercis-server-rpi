FROM jsurf/rpi-java

WORKDIR /
ADD /lib/ethercis-1.3.0-SNAPSHOT-runtime.jar ethercis.jar
ADD /config /config

# Execute entrypoint script to configure the db details in services.properties
#COPY entrypoint.sh /
COPY . /
COPY /config/log4j.xml /
COPY /config/services.properties /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8080
CMD java -jar ethercis.jar -propertyFile /config/services.properties