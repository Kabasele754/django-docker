FROM python:3.10.8 
ENV PYTHONUNBUFFERED 1

COPY /project_docker_django/req.txt /tmp/req.txt
COPY /project_docker_django/req_dev.txt /tmp/req_dev.txt
COPY /project_docker_django /project_docker_django
WORKDIR /project_docker_django
EXPOSE 8000

ARG DEV=false

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/req.txt && \
    if [ $DEV = "true" ]; \
        then /py/bin/pip install -r /tmp/req_dev.txt ; \
    fi && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user && \
    chown -R django-user:django-user -R /project_docker_django/ 
    

ENV PATH="/scripts:/py/bin:$PATH"

USER django-user
