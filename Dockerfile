FROM golang:1.13.10-alpine3.11

COPY --from=jakolehm/nightwatch-amd64:1.3.0 /nightwatch /usr/bin

WORKDIR /app
VOLUME ["/go/pkg/mod/cache"]

ENTRYPOINT [ "/usr/bin/nightwatch" ]
CMD [ "go", "run", "main.go" ]
