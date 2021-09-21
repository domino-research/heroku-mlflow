#!/bin/bash
export AWS_ACCESS_KEY_ID=${FELIX_AWS_ACCESS_KEY_ID}
export AWS_SECRET_ACCESS_KEY=${FELIX_AWS_SECRET_ACCESS_KEY}
mlflow server --host 0.0.0.0 --port ${PORT} --backend-store-uri ${DATABASE_URL/postgres/postgresql} --default-artifact-root file:///root/mlflow
