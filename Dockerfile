FROM golang:1.17

WORKDIR app_work_dir
ADD . /app_work_dir

EXPOSE 5050

ENV GO111MODULE="on"
ENV GOPROXY="https://goproxy.io,direct"

RUN cd /app_work_dir && go build -o go-web && chmod +x go-web

CMD ["/app_work_dir/go-web"]