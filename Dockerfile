FROM python:3.9.1-alpine

WORKDIR /flask_flask_2

COPY Pipfile .
COPY Pipfile.lock .
RUN pip install pipenv

COPY . .

CMD pipenv run python microblog.py