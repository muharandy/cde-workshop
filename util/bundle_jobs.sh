cde resource create --name cde-tel-dev
tar -czf cde-tel.tar.gz *
cde resource upload-archive --name cde-tel-dev --local-path cde-tel.tar