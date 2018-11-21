sudo apt-get update

sudo add-apt-repository ppa:gophers/archive
sudo apt-get update
sudo apt-get install golang-1.10-go -y

if ! grep -Fq "GOPATH" /home/ubuntu/.bashrc; then
    echo "PATH=$PATH:/usr/lib/go-1.10/bin" >> /home/ubuntu/.bashrc
    echo "GOPATH=/vagrant/dev" >> /home/ubuntu/.bashrc
    echo "cd /vagrant" >> /home/ubuntu/.bashrc
fi
