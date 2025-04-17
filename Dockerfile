FROM redislabs/redisearch:1.6.15
CMD [ "redis-server", "--save 300 1", "--loadmodule /usr/lib/redis/modules/redisearch.so", "MINPREFIX", "1" ]
