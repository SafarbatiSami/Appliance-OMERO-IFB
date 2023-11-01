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
# mv Fiji.app/ /ifb/bin/
rm fiji-linux64.zip

cp desktop-app-fiji /usr/share/applications/Fiji.desktop
chmod +x /usr/share/applications/Fiji.desktop

mkdir ~ubuntu/Desktop
cp /usr/share/applications/Fiji.desktop ~ubuntu/Desktop/
chown ubuntu ~ubuntu/Desktop/Fiji.desktop

# Comprehensive update of ImageJ
Fiji.app/ImageJ-linux64 --update update

#----------------------------------------------------------------------------
# Install OMERO.insight Plugin 

curl -LJO https://github.com/ome/omero-insight/releases/download/v5.8.1/omero_ij-5.8.1-all.jar
mv omero_ij-5.8.1-all.jar /ifb/bin/Fiji.app/plugins/

#----------------------------------------------------------------------------
# Add GReD OMERO plugins

# 1. simple-omero-client
curl -LJO https://github.com/GReD-Clermont/simple-omero-client/releases/download/5.12.3/simple-omero-client-5.12.3.jar
mv simple-omero-client-5.12.3.jar /Fiji.app/plugins/

# 2. omero_batch-plugin (need simple-omero-client)
curl -LJO https://github.com/GReD-Clermont/omero_batch-plugin/releases/download/1.0.5/omero_batch-plugin-1.0.5.jar
mv omero_batch-plugin-1.0.5.jar /Fiji.app/plugins/

# 3. omero_macro-extensions
curl -LJO https://github.com/GReD-Clermont/omero_macro-extensions/releases/download/1.3.2/omero_macro-extensions-1.3.2.jar
mv omero_macro-extensions-1.3.2.jar /Fiji.app/plugins/

# 4. Install NucleusJ2.1 
curl -LJO https://github.com/GReD-Clermont/NucleusJ2/releases/download/v2.1.0/nucleusj_2-2.1.0.jar
mv nucleusj_2-2.1.0.jar /Fiji.app/plugins/

#5. Install NODeJ
curl -LJO https://gitlab.com/api/v4/projects/22788291/packages/maven/burp/NODeJ/1.0.5/NODeJ-1.0.5.jar
mv NODeJ-1.0.5.jar /Fiji.app/plugins/










