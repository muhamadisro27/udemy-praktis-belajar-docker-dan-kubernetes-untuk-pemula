# Hello World V2 Sample App

Hello World V2, able to connect to mariadb

## How to run

#### Docker

```bash
docker build --no-cache -t hello-world-v2 .
docker run -it -e PORT=8085 -e MYSQL_CONN_STRING=root@tcp(localhost:3306)/hello_world?parseTime=true -p 8085:8085 hello-world-v2
```

#### Windows (non-docker)

```bash
set MYSQL_CONN_STRING=root@tcp(localhost:3306)/hello_world?parseTime=true
set PORT=8083
go run main.go lib.go model.go
```

#### Nix/Linux

```bash
export MYSQL_CONN_STRING=root@tcp(localhost:3306)/hello_world?parseTime=true
export PORT=8083
go run main.go lib.go model.go
```

#### Go CLI

```bash
MYSQL_CONN_STRING=root@tcp(localhost:3306)/hello_world?parseTime=true PORT=8083 go run main.go lib.go model.go
```

## Author

Noval Agung Prayogo
