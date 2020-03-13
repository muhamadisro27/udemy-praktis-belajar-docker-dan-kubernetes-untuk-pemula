# Hello World Sample App

Nothing much

## How to run

#### Docker

```bash
docker build --no-cache -t hello-world .
docker run -it -e PORT=8085 -e INSTANCE_ID=some-text -p 8085:8085 novalagung/hello-world:v0
```

#### Windows (non-docker)

```bash
set PORT=8083
set INSTANCE_ID=some-text
go run main.go
```

#### Nix/Linux (non-docker)

```bash
export PORT=8083
export INSTANCE_ID=some-text
go run main.go
```

Or,

```bash
PORT=8083 INSTANCE_ID=some-text go run main.go
```

## Author

Noval Agung Prayogo
