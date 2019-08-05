#!/bin/sh

sed -i 's/POSTGRES_PORT/'"$DB_PORT"'/g' /config/services.properties
sed -i 's/POSTGRES_IP/'"$DB_IP"'/g' /config/services.properties
sed -i 's/POSTGRES_USER/'"$DB_USER"'/g' /config/services.properties
sed -i 's/POSTGRES_PW/'"$DB_PW"'/g' /config/services.properties
exec "$@"