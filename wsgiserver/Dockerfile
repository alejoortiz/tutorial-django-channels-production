FROM python:3.8
# create directory
RUN mkdir -p /app
# add app directory to path
ENV PATH="/app:${PATH}"
# change directory
WORKDIR /app
# copy requirements
COPY ./wsgiserver/requirements.txt /app/
# install requirements
RUN pip install -r requirements.txt
# copy the app into the container
COPY ./app /app
# copy the scripts into the container
COPY ./wsgiserver/entrypoint.sh /app/
# give permisions to execute the scripts
RUN chmod +x entrypoint.sh
# copy the scripts into the container
COPY ./wsgiserver/wait_for_postgres.py /app/
# create directories inside docker for static
RUN mkdir -p /vol/web/static
# create a new user to avoid use root
RUN useradd user
# change user of files
RUN chown -R user:user /vol
# change permisions for user files
RUN chmod -R 755 /vol/web
# user user
USER user
# run entrypoint script
CMD ["entrypoint.sh"]