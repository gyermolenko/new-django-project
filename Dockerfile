FROM python:3.6
RUN apt-get update && apt-get install -f -y postgresql-client
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements/base.txt /code/requirements/
COPY requirements/dev.txt /code/requirements/
RUN pip install -r requirements/dev.txt
COPY . /code/
