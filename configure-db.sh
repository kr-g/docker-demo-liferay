#!/bin/bash

sudo -u root service postgresql start
sudo -u postgres bash -c "psql -c \"CREATE USER lportal WITH PASSWORD 'lportal';\""
sudo -u postgres createdb -O lportal lportal

