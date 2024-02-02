FROM python:3.8-alpine

# based on https://github.com/kersvers/s3-sync-with-cloudfront-invalidation
LABEL "com.github.actions.name"="AWS S3 Sync with CloudFront Cache invalidation"
LABEL "com.github.actions.description"="Sync a directory to an AWS S3 bucket and invalidate the CloudFront cache"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="1.0"
LABEL repository="https://github.com/exatasmente/s3-sync-with-cloudfront-invalidation-extra-args"
LABEL homepage=""
LABEL maintainer="credits to https://kersvers.team"


ENV AWSCLI_VERSION="1.18.210"

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
