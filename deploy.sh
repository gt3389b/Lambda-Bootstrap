#!/bin/bash

PROJECT="uuid-generator"

cd $(dirname $0)

pushd ${PROJECT}
zip -r ../${PROJECT}.zip .
popd

#aws lambda create-function --function-name uuid --runtime "nodejs6.10" --role "arn:aws:iam::710516728004:role/lambda_basic_execution" --handler "lambda_function.handler" --zip-file fileb://uuid-generator.zip

aws lambda update-function-code --function-name "uuid" --zip-file fileb://uuid-generator.zip
