FROM nginx:alpine
VOLUME /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY public_html/ /usr/share/nginx/html/