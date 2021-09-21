#!/bin/bash
mlflow server --host 0.0.0.0 --port ${PORT} --backend-store-uri ${DATABASE_URL/postgres/postgresql} --default-artifact-root file:///root/mlflow
