
# NGINX webserver that serves a simple page containing its hostname, IP address and port as wells as the request URI and the local time of the webserver.

And as a modification of the base image (nginx-hello), this also shows two environment variables, the environment we are working on and a secret stored using secrets.

The images are uploaded to Docker Hub -- https://hub.docker.com/r/ddedamian/custom-nginx/.

How to run:
```
$ docker run -P -d ddedamian/custom-nginx
```

Main modifications

   - I changed the entrypoint to start the nginx service with a cron daemon too.
   - I modified the index to show this new variables.
   - I added a script to update this environment variables in case they were modified
