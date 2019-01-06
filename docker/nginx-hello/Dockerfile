FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ENV ENVIRONMENT=default
ADD hello.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/
ADD updateHTML.sh /tmp/
RUN chmod +x /tmp/updateHTML.sh
RUN /tmp/updateHTML.sh
CMD cat /usr/share/nginx/html/index.html
