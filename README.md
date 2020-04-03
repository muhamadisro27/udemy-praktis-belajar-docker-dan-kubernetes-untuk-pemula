# Hello World Sample App

Nothing much

## How to run

#### Docker

```bash
docker build --no-cache -t hello-world .
docker run -it -e PORT=8085 -e MYSQL_CONN_STRING=root@tcp(localhost:3306)/hello_world?parseTime=true -p 8085:8085 novalagung/hello-world
```

#### Windows (non-docker)

```bash
set MYSQL_CONN_STRING=root@tcp(localhost:3306)/hello_world?parseTime=true
set PORT=8083
go run main.go lib.go model.go
```

#### Nix/Linux (non-docker)

```bash
export MYSQL_CONN_STRING=root@tcp(localhost:3306)/hello_world?parseTime=true
export PORT=8083
go run main.go lib.go model.go
```

Or,

```bash
MYSQL_CONN_STRING=root@tcp(localhost:3306)/hello_world?parseTime=true PORT=8083 go run main.go lib.go model.go
```

## Author

Noval Agung Prayogo
