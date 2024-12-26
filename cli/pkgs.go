package main

import "fmt"

var pkgs []string = []string{
	"",
}

func ListPkgs() {
	for pkg := range pkgs {
		fmt.Println(pkg)
	}
}
