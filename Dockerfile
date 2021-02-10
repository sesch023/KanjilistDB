FROM mongo

COPY dump/ /tmp/dump/

EXPOSE 27017

CMD mongod --fork --logpath /var/log/mongodb.log; \
    mongorestore /tmp/dump/; \
    mongod --shutdown; \
    docker-entrypoint.sh mongod