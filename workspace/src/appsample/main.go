package main

import (
	"fmt"

	"stringutil"

	"github.com/Napat/jsonparser"
)

var data = []byte(`
			{	
				"person": {
					"name": {
						"first": "Leonid",
						"last": "Bugaev",
						"fullName": "Leonid Bugaev"
					},
					"github": {
						"followers": 109
					}
				},
				"company": {
					"name": "Acme"
				}
			}`)

func main() {
	fmt.Println("Hello golang workspace!!")
	fmt.Println(stringutil.Reverse("!selpmaxe oG ,olleH"))
	if value, err := jsonparser.GetInt(data, "person", "github", "followers"); err == nil {
		fmt.Println(value)
	}
}
