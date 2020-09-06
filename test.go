package main

import (
	"fmt"
	"os"
	"net/http"
)

func main() {
	http.HandleFunc("/", HelloServer)
        http.ListenAndServe(":8080", nil)
}	
func HelloServer(w http.ResponseWriter, r *http.Request) {
      name, err := os.Hostname()
      if err != nil {
              panic(err)
      }

      fmt.Fprintf(w, "Hostname:, %s", name)
}
