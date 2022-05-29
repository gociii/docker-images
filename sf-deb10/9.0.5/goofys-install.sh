# RUN AS ROOT:

# Install go
apt install -y --no-install-recommends --no-install-suggests golang-go

# Download goofys package
go get github.com/kahing/goofys

# Install goofys
go install github.com/kahing/goofys

# Copy the goofys binary to somewhere in your path
cp go/bin/goofys /usr/bin/

$ cat .aws/credentials
[default]
aws_access_key_id=YOURAWSACCESSKEY
aws_secret_access_key=YOURAWSSECRETKEY

# Make a directory to mount the S3 bucket
mkdir /mnt/s3.bucket

# Mount the S3 bucket
goofys --profile=tess stpubdata /home/ubuntu/data

# Finally, list the contents of the S3 bucket
ls /mnt/s3.bucket
