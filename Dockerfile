FROM redis:6.2
WORKDIR /data

RUN mkdir -p /usr/lib/redis/modules
COPY /build-1.6.15/redisearch.so /usr/lib/redis/modules

EXPOSE 6379
CMD [ "redis-server", "--save 300 1", "--loadmodule /usr/lib/redis/modules/redisearch.so", "MINPREFIX", "1" ]
