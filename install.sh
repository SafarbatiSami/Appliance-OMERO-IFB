#!/bin/bash

# This script is executed on the virtual machine during the Installation phase (need to be ran as root!).
# It is used to record a predefined VM-image of the appliance.
# Otherwise executed first during a cloud deployement in IFB-Biosphere

#----------------------------------------------------------------------------
# Install Fiji

# https://imagej.net/Fiji/Downloads
curl -LJO https://downloads.imagej.net/fiji/latest/fiji-linux64.zip
unzip fiji-linux64.zip
chown -R ubuntu Fiji.app
mv Fiji.app/ /ifb/bin/
rm fiji-linux64.zip

cp desktop-app-fiji /usr/share/applications/Fiji.desktop
chmod +x /usr/share/applications/Fiji.desktop

mkdir ~ubuntu/Desktop
cp /usr/share/applications/Fiji.desktop ~ubuntu/Desktop/
chown ubuntu ~ubuntu/Desktop/Fiji.desktop

# Comprehensive update of ImageJ
/ifb/bin/Fiji.app/ImageJ-linux64 --update update

#----------------------------------------------------------------------------
# Install OMERO.insight Plugin 

curl -LJO https://github.com/ome/omero-insight/releases/download/v5.8.1/omero_ij-5.8.1-all.jar
mv omero_ij-5.8.1-all.jar /ifb/bin/Fiji.app/plugins/

# OR IF NOT FIJI

curl -LJO https://github.com/ome/omero-insight/releases/download/v5.8.3/OMERO.insight-5.8.3.zip
unzip OMERO.insight-5.8.3.zip


#----------------------------------------------------------------------------
# Install NucleusJ2.0 




