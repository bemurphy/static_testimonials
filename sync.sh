s3cmd --acl-public --access_key=$AWS_ACCESS_KEY_ID --secret_key=$AWS_SECRET_ACCESS_KEY --add-header='Cache-Control':'max-age=1' sync ./testimonials/*.html s3://$S3_BUCKET/testimonials/

s3cmd --acl-public --access_key=$AWS_ACCESS_KEY_ID --secret_key=$AWS_SECRET_ACCESS_KEY --add-header='Cache-Control':'max-age=1' sync ./data/*.json s3://$S3_BUCKET/data/

s3cmd --acl-public --access_key=$AWS_ACCESS_KEY_ID --secret_key=$AWS_SECRET_ACCESS_KEY --add-header='Cache-Control':'max-age=1' sync *.css s3://$S3_BUCKET/
