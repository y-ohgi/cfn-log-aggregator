cfn-log-aggregator
---

# 概要
AWSのログ収集スタック作成用CloudFormationテンプレート

# 作成サービス
* IAM Role
* S3
* Elasticsearch Service
* Firehose

# How to Use
## Set up
1. バケットの作成
    ```
    $ aws s3api create-bucket --bucket <YOUR S3 BUCKET NAME> --region ap-northeast-1
    ```
2. `parameters/` を適宜編集
    ```
    $ emacs ./parameters/develop.json
    # <YOUR S3 BUCKET URL> => https://s3-ap-northeast-1.amazonaws.com/<YOUR S3 BUCKET NAME>
    ```

## スタック作成
```
$ ./provisioning.sh <YOUR S3 BUCKET NAME> develop
```
