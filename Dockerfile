FROM quay.io/domino/python-public:3.9.6-slim
RUN pip install --no-cache mlflow
CMD mlflow server --host 0.0.0.0 --port ${PORT} --backend-store-uri ${DATABASE_URL/postgres/postgresql}
