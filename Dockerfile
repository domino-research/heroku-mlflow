FROM quay.io/domino/python-public:3.9.6-slim
RUN pip install --no-cache psycopg2-binary
RUN pip install --no-cache mlflow
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
