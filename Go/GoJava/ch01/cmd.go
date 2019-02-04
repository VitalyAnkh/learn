package main
import "flag"
import "fmt"
import "os"

type Cmd struct{
	helpFlag bool
	versionFlag bool
	cpOption string
	class string 
	args []string 
}