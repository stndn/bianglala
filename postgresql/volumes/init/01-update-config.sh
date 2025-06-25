#!/bin/bash

# Update the datestyle in postgresql.conf
sed -i -e "s/datestyle = 'iso, mdy'/datestyle = 'iso, ymd'/" /var/lib/postgresql/data/postgresql.conf
