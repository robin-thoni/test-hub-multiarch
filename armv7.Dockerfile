FROM nginx:1.19.2

RUN echo "Working armv7" > /usr/share/nginx/html/index.html

ARG TEST_VAR=default_value
