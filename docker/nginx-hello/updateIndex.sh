#/bin/sh

# I have to add this small script in order to update the html index file
# using ENV variables from Docker

sed -i "s|^<p\ class=\"smaller\"><span>Environment:<\/span>\ <span>.*<\/span><\/p>|<p\ class=\"smaller\"><span>Environment:<\/span>\ <span>${ENVIRONMENT}<\/span><\/p>|g" /usr/share/nginx/html/index.html
sed -i "s|^<p\ class=\"smaller\"><span>Secret:<\/span>\ <span>.*<\/span><\/p>|<p\ class=\"smaller\"><span>Secret:<\/span>\ <span>${PASSWORD}<\/span><\/p>|g" /usr/share/nginx/html/index.html
