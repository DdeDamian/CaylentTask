#/bin/bash

# I have to add this small script in order to update the html index file
# using ENV variables from Docker

sed -i "s|environment|${ENVIRONMENT}|g" /usr/share/nginx/html/index.html
