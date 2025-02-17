FROM python:3.12-slim

WORKDIR /app

RUN mkdir /app/data

ADD requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

ADD . .

CMD ["python", "bot.py"]
