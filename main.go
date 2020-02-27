package main

import (
	"flag"
	"log"
	"net/http"
)

func main() {
	flagPort := flag.String("port", "8080", "web server port")
	flag.Parse()

	mux := http.NewServeMux()
	mux.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("hello world"))
	})
	server := new(http.Server)
	server.Handler = mux
	server.Addr = ":" + *flagPort

	log.Println("server starting at", server.Addr)
	err := server.ListenAndServe()
	if err != nil {
		log.Fatal(err.Error())
	}
}
