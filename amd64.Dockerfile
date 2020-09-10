FROM nginx:1.19.2

RUN echo "Working amd64" > /usr/share/nginx/html/index.html

ARG TEST_VAR=default_value
