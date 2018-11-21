sudo apt-get update

#sudo apt-get install git golang-go mercurial -y
sudo add-apt-repository ppa:gophers/archive
sudo apt-get update
sudo apt-get install golang-1.10-go -y

#export PATH=$PATH:/usr/lib/go-1.10/bin
#export GOPATH=/vagrant/dev

#go get golang.org/x/tools/cmd/godoc
##go get golang.org/x/tools/cmd/vet
##go get github.com/golang/lint/golint
##go get github.com/go-martini/martini
#go get github.com/mholt/caddy/caddy

if ! grep -Fq "GOPATH" /home/ubuntu/.bashrc; then
    echo "PATH=$PATH:/usr/lib/go-1.10/bin" >> /home/ubuntu/.bashrc
    echo "GOPATH=/vagrant/dev" >> /home/ubuntu/.bashrc
    echo "cd /vagrant" >> /home/ubuntu/.bashrc
fi
