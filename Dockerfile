FROM php:8

WORKDIR /data

COPY . /glpi-dev

RUN pip install -r requirements.txt

CMD [ "php", "docker-compose.yml" ]