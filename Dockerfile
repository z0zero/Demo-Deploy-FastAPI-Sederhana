FROM python:3.8-slim

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY . ./

RUN pip install -r requirements.txt

EXPOSE 8000

CMD exec uvicorn mlapi:app --host 0.0.0.0 --port 8000
