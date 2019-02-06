package main

import (
	"flag"
	"fmt"
	"strings"
)

var n = flag.Bool("n", false, "omit trailing newline")
var sep = flag.String("s", "", "seperator")

func main() {
	flag.Parse()
	fmt.Print(strings.Join(flag.Args(), *sep))
	if !*n {
		fmt.Println()
	}
	v := 1
	incr(&v)
	fmt.Println(incr(&v))
}

func incr(p *int) int {
	*p++
	return *p
}
