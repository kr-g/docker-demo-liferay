#!/bin/bash

sudo -u root echo "listen_addresses ='*'" >> /etc/postgresql/9.5/main/postgresql.conf
sudo -u root echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.5/main/pg_hba.conf

sudo -u root service postgresql start

sudo -u postgres bash -c "psql -c \"CREATE USER lportal WITH PASSWORD 'lportal';\""
sudo -u postgres createdb -O lportal lportal

sudo -u postgres bash -c "psql -c \"ALTER USER postgres PASSWORD 'test';\""

