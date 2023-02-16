#FROM python:3.6.1-alpine

#RUN pip install --upgrade pip
#RUN pip install flask

FROM python:3.8

WORKDIR /app

COPY ./app /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
ENV FLASK_RUN_PORT 5000

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
