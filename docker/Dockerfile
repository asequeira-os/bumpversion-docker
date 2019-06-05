FROM python:3.7.3-stretch

RUN apt-get update && apt-get clean

RUN python -m pip install --upgrade pip
ENV PATH=${PATH}:/root/.local/bin
RUN pip install --user --upgrade bumpversion


WORKDIR /bumpversion

ENTRYPOINT bash
