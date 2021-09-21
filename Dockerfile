FROM quay.io/domino/python-public:3.9.6-slim
RUN pip install --no-cache psycopg2-binary boto3 mlflow
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
