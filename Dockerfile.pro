FROM nginx:1.18.0

COPY ./dist /opt/web
COPY docker/nginx.conf /etc/nginx/nginx.conf
# COPY docker/entrypoint.sh /entrypoint.sh
# ENV LISTEN_DOMAIN=182.61.5.81

#暴露容器8001端口
EXPOSE 8001
# ENTRYPOINT [ "/entrypoint.sh" ]
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]