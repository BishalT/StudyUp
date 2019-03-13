#!/usr/bin/env bash
set -e

# Path for the nginx.conf file
nginxconf='/etc/nginx/nginx.conf'

#if the arguement is not empty
if [ "$1" != "" ]; then
# if the arguement already exists in the file
  if grep -Fq "$1:6379" $nginxconf; then
    echo "Server already pointed to. Please try another server."
  else
  # if it does not exist then write the arguement into the file
    sed -i "s/server.*:/server $1:/g" $nginxconf
  fi
fi
# reload the file
exec /usr/sbin/nginx -s reload
