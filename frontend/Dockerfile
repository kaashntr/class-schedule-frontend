FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

COPY /scripts/entrypoint.sh /opt/entrypoint.sh
COPY /frontend/build.zip /usr/share/nginx/html/build.zip
COPY nginx.conf /etc/nginx/nginx.conf

RUN chmod +x /opt/entrypoint.sh && \
    unzip build.zip && \
    rm build.zip

ENTRYPOINT [ "/opt/entrypoint.sh" ]
CMD ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/nginx.conf"]
