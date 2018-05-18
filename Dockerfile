FROM registry.new.dataos.io/wangyd/redis:latest

CMD [ "redis-server", "/redis/redis.conf" ]
