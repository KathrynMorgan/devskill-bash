#! /bin/sh
## This bash script is designed to create a unique and repeatable mac address based on 2 unique 
## identifiers 


## Generate unique string for mac address generation
echo "Going to generate random virtual mac address..."
   echo "Please enter the host's fully qualified domain name"
      read VIRTFQDN
         export $VIRTFQDN
   echo "Please enter the host's desired bridge connection"
      read BRIDGE
         export $BRIDGE

## Generate Unique mac address
echo "Generating unique virtual mac address..."
   macaddr=$(echo $BRIDGE-$VIRTFQDN|md5sum|sed 's/^\(..\)\(..\)\(..\)\(..\)\(..\).*$/02:\1:\2:\3:\4:\5/')
      export $VIRTMACADDR

   echo "Unique mac address created for $VIRTFQDN $BRIDGE connection = $VIRTMACADDR"
