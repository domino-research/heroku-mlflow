FROM quay.io/domino/python-public:3.9.6-slim
RUN pip install --no-cache psycopg2-binary
RUN pip install --no-cache mlflow
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["mlflow server --host 0.0.0.0 --port ${PORT} --backend-store-uri ${DATABASE_URL/postgres/postgresql} --default-artifact-root file:///root/mlflow"]
