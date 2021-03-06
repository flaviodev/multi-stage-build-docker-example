FROM golang:alpine AS build-env
WORKDIR /app
ADD . /app
RUN cd /app 
RUN go build hello-world.go


FROM alpine
RUN apk update && \
   apk add ca-certificates && \
   update-ca-certificates && \
   rm -rf /var/cache/apk/*
WORKDIR /app
COPY --from=build-env /app/hello-world /app
EXPOSE 8080
ENTRYPOINT ./hello-world
