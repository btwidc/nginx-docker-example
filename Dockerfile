FROM nginx:alpine

RUN sed -i '1i load_module /etc/nginx/modules/ngx_http_image_filter_module.so;' /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY static/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
