FROM nginx:mainline-alpine

RUN rm /etc/nginx/conf.d/*
ADD hello.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/

ADD updateIndex.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/updateIndex.sh

RUN echo "*/1     *       *       *       *       sh /usr/local/bin/updateIndex.sh" >> /var/spool/cron/crontabs/root

COPY entry.sh /entry.sh
RUN chmod 755 /entry.sh

CMD ["/entry.sh"]
