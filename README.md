# Go Testbed

Quick and dirty golang VM

## Development

### Requirements

* [Vagrant](http://www.vagrantup.com/downloads.html)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### Quickstart

After cloning this repo, get a new development environment:

    vagrant up
    
This will provision your new VM, install system requirements and golang 1.10

### Usage

Hello world:

```
package main
import "fmt"
func main() {
    fmt.Println("hello world!")
}
```

Build via `go build hello.go`

Run via `./hello`

To fetch related tooling, use `go get` a la:

```
go get golang.org/x/tools/cmd/godoc
go get golang.org/x/tools/cmd/vet
go get github.com/golang/lint/golint
go get github.com/go-martini/martini
go get github.com/mholt/caddy/caddy
```