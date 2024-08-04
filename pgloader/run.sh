docker run --rm -it dimitri/pgloader:latest pgloader --with "quote identifiers" \
 mysql://root:nice2122!@10.3.192.242:3306/SCS \
 pgsql://postgres:postgresqazwsx!@@@10.3.192.30:5432/postgres 

docker run --rm -it dimitri/pgloader:latest pgloader --with "quote identifiers" mysql://root:nice2122!@10.3.192.242:3306/SCS pgsql://postgres:nice2122!@10.3.92.91:5432/postgres

docker run --rm -it dimitri/pgloader:latest pgloader --with "quote identifiers" mysql://root:nice2122!@10.3.192.242:3306/SCS pgsql://postgres:nice2122!@10.3.92.91:5432/postgres

# powershell 사용
docker run -v $pwd/:/data -w /data --rm -it dimitri/pgloader:latest pgloader mig.load