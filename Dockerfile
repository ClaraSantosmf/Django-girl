FROM python:3.8.10
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . /app
RUN ./manage.py collectstatic
COPY docker/bin/start.sh /usr/bin/start.sh
CMD start.sh
