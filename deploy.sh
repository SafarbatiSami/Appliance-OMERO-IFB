#!/bin/bash

# This script is executed on the virtual machine during the *Deployment* phase.
# It is used to apply parameters specific to the current deployment.
# It is executed secondly during a cloud deployement in IFB-Biosphere,
# after the *Installation* phase.

# Application parameters :
# INSTANCE_HOSTNAME (in): VM hostname or IP address got from the cloud broker

# General parameters
source /etc/profile.d/ifb.sh
