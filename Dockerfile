ARG RESTREAMER_TAG

FROM datarhei/restreamer:${RESTREAMER_TAG:-latest}

#https://www.rockyourcode.com/run-docker-nginx-as-non-root-user/
