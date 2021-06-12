GOVERSION=1.10.2
cd ~ && wget https://storage.googleapis.com/golang/go$GOVERSION.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go$GOVERSION.linux-amd64.tar.gz
nano ~/.bashrc
  Add "export PATH=$PATH:/usr/local/go/bin"
  Add "export GOPATH=~/go"
. ~/.bashrc
mkdir -p ~/go/src
