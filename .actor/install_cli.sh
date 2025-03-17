#!/bin/bash


echo "Installing CLI"
filename="apify-v0.21.0-bab56ce-linux-x64.tar.gz"
url="https://github.com/netmilk/apify-cli/releases/download/experimental/"
file_url="$url$filename"
echo "Downloading: $file_url"
curl -L -O $file_url
tar zxf $filename -C /opt
ln -s /opt/apify/bin/apify /usr/bin/apify
rm $filename

echo "Uname: $(uname -a)"
