# make docker image self

FROM golang:1.11.4

COPY main.go /app/main.go

CMD ["go" "run" "/app/main.go"]

# docker build --tag app-golang:1.0 






