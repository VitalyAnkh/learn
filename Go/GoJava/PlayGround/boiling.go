package main

import "fmt"

const freezingF, boilingF = 32.0, 212.0

func main() {
	var f = boilingF
	var c = (f - 32) * 5 / 9
	fmt.Printf("boiling point = %g F or %g C\n", f, c)
	fmt.Printf("%g F = %g C\n", freezingF, fToC(freezingF))
	fmt.Printf("%g F= %g C\n", boilingF, fToC(boilingF))

}

func fToC(f float64) float64 {
	return (f - 32) * 5 / 9
}
