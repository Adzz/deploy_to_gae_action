FROM gcr.io/google.com/cloudsdktool/cloud-sdk:latest

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
