FROM python:3.6.1-alpine

RUN pip install --upgrade pip
RUN pip install flask

WORKDIR /app

COPY ./app /app

CMD ["python","app.py"]
