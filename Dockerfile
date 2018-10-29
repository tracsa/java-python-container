FROM python:3.5.6-slim-stretch

RUN apt update
RUN apt install -y \
    python3-dev \
    default-jdk

RUN pip3 install --upgrade pip
RUN pip3 install pipenv

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV TZ UTC

CMD ["bash"]
