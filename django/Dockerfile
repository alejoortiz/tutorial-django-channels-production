FROM python:3.8
# create directory
RUN mkdir -p /code
# add code directory to path
ENV PATH="/code:${PATH}"
# change directory
WORKDIR /code
# copy requirements
COPY ./django/requirements.txt /code/
# install requirements
RUN pip install -r requirements.txt
# copy the app into the container
COPY ./code /code
# copy the scripts into the container
COPY ./django/entrypoint.sh /code/
# give permisions to execute the scripts
RUN chmod +x entrypoint.sh
# copy the scripts into the container
COPY ./django/wait_for_postgres.py /code/
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