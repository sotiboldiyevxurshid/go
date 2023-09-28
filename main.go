// package main

// import (
//     "fmt"
//     "net/http"
// )

// func main() {


//     http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {

//         fmt.Fprintf(w, "Hello, World!")
//     })

//     http.ListenAndServe(":8080", nil)
// }


package main

import (
    "database/sql"
    "log"

    _ "github.com/lib/pq"
)

func main() {

    
    // Open a connection to the database
    db, err := sql.Open("postgres", "host=postgres user=super_admin password=SomeSecretPassword dbname=postgres sslmode=disable")
    if err != nil {
        log.Fatal(err)
    }
    defer db.Close()

    // Ping the database
    err = db.Ping()
    if err != nil {
        log.Fatal(err)
    }

    log.Println("Successfully connected to the PostgreSQL database")

    log.Println("success")
}


