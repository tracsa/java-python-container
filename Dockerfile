FROM python:3.5.6-slim-stretch

RUN add-apt-repository ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y \
    python3-dev \
    orcale-java8-installer

RUN apt-get install oracle-java8-set-default

RUN pip3 install --upgrade pip
RUN pip3 install pipenv

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV TZ UTC

CMD ["bash"]
