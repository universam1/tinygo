package main

import (
	"os"
)

func main() {
	os.Stdout.Write([]byte("written to os.Stdout\n"))
	println("stdin: ", int(os.Stdin.Fd()))
	println("stdout:", int(os.Stdout.Fd()))
	println("stderr:", int(os.Stderr.Fd()))
}
