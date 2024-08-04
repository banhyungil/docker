# host volume으로 resources를 모두 복사한다.
# 해당 컨테이너 volume 바인딩은 /app/hostvolume으로 해줘야한다.
FROM alpine:latest

WORKDIR /app
RUN mkdir /app/hostvolume
COPY ./run.sh /app/
RUN chmod +x /app/run.sh
COPY ./resources /app/resources
ENTRYPOINT /app/run.sh