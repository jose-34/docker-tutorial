FROM python:3.9-slim-buster
WORKDIR /Users/odhia/my_app
ENV MY_INTRO=my_app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development 
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run"]

