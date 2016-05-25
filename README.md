# sauce-connect-docker
To run sauce connect image 
1. First build the docker image `docker build -t test/sauceconnect .`
using `docker run -ti -p 0.0.0.0:8000:8000 test/sauceconnect -u <sauce_username> -k <sauce_key> --tunnel-identifier <tunnel_name>`
