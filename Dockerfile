FROM python:3.4

MAINTAINER Samuel Dion-Girardeau <samuel.diongirardeau@gmail.com>

ENV ERRBOT_HOME=/errbot

RUN mkdir -p $ERRBOT_HOME \
             $ERRBOT_HOME/data \
             $ERRBOT_HOME/plugins

WORKDIR $ERRBOT_HOME

COPY requirements.txt ./requirements.txt
RUN pip install --no-cache-dir --disable-pip-version-check -r requirements.txt

COPY config.py ./config.py

VOLUME /errbot/data /errbot/plugins

CMD ["errbot"]
