# Hello World Sample App

Nothing much

## How to run

#### Docker

```bash
docker build --no-cache -t hello-world --build-arg PORT=8083 --build-arg INSTANCE_ID=some-text .
docker run hello-world
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
