FROM python:latest

WORKDIR /app

ADD subset.sh /app
RUN chmod 700 /app/subset.sh

RUN apt-get update && \
    apt-get install build-essential -y

RUN pip install fonttools brotli

CMD [ "bash", "./subset.sh" ]
