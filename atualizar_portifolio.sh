#!/bin/bash

# Script to upload the portfolio to S3

BUCKET_NAME="carlos-martins-portfolio.com.br"

BUCKET_PATH="s3://$BUCKET_NAME"

aws s3 sync . "$BUCKET_PATH" --delete --exclude "atualiza_portfolio.sh"

echo "Upload to S3 completed."