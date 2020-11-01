FROM nginxinc/nginx-unprivileged:1-alpine
# copy configuration for nginx
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
# copy configuration for uwsgi file
COPY ./nginx/uwsgi_params /etc/nginx/uwsgi_params
# switch tmp to root for create files
USER root
# create directory
RUN mkdir -p /vol/static
# give permissions to directory
RUN chmod 755 /vol/static
# switch to default user
USER nginx