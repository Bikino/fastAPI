FROM python:3

RUN adduser fastapi_app

WORKDIR /home/fastapi_app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY api.py ./

RUN chown -R fastapi_app:fastapi_app ./

USER fastapi_app

CMD uvicorn api:app --host 0.0.0.0 --port 5057