qdoractl login -u <access_key> -p<secret_key>
docker build -t qntool-unzip:v1 . &&
qdoractl push qntool-unzip:v1 &&

qdoractl register qntool-unzip -d unzip &&

qdoractl release --config . &&

qdoractl release qntool-unzip -d &&

qdoractl deploy qntool-unzip v1 --region z0 --expect 1
