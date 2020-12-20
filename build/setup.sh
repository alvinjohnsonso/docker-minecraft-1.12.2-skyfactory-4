#!/bin/sh

echo 'extracting Sky Factory 4'
mkdir /tmp/build/skyfactory-4
unzip /tmp/build/skyfactory-4.zip -d /tmp/build/skyfactory-4

# remove unnecessary files
echo 'removing unnecessary files'
cd /tmp/build/skyfactory-4
rm forge-* Install.* ServerStart.* server.properties settings.* README.txt UPDATE-GUIDE.txt

# copy files to source folder
echo 'copy Sky Factory 4 to source folder'
cp -r /tmp/build/skyfactory-4/* /usr/src/app

# cleaning up
cd /usr/src/app
rm -rf /tmp/build/
