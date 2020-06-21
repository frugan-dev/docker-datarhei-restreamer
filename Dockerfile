ARG RESTREAMER_TAG

FROM datarhei/restreamer:${RESTREAMER_TAG:-latest}

#https://www.rockyourcode.com/run-docker-nginx-as-non-root-user/
RUN chown -R nginx:nginx /var/cache/nginx; \
        chown -R nginx:nginx /var/log/nginx; \
        chown -R nginx:nginx /etc/nginx/conf.d; \
        touch /var/run/nginx.pid; \
        chown -R nginx:nginx /var/run/nginx.pid
