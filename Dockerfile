FROM python:3
COPY . /code
WORKDIR /code 
RUN apt-get update -y && apt-get install python3-pip libcairo2-dev libgirepository1.0-dev libpango1.0-dev pkg-config python3-dev gir1.2-pango-1.0 libjpeg-dev zlib1g-dev -y
RUN python3 -m venv venv
ENV PATH="/code/venv:$PATH"
RUN pip3 install poetry
RUN poetry install
CMD ["./run.sh"]



