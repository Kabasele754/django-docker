From python:3

ENV PYTHONBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir /app

WORKDIR /app

RUN pip install --upgrade pip

COPY requiements.txt /app/

RUN pip install -r requiements.txt

COPY . /app/