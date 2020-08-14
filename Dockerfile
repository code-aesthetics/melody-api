FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

COPY ./app /app
COPY requirements.txt /app

WORKDIR /app

RUN pip3.7 install -r requirements.txt
CMD ["uvicorn", "app.main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]
