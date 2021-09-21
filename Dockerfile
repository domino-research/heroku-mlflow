FROM quay.io/domino/python-public:3.9.6-slim
RUN pip install --no-cache mlflow
ENTRYPOINT ["mlflow"]
CMD ["server", "--host", "0.0.0.0"]
