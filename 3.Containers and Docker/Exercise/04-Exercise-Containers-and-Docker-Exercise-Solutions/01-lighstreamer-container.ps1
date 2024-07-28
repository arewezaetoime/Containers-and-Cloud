docker pull lightstreamer

docker run --name ls-server -p 80:8080 -d lightstreamer

docker stop ls-server

docker remove ls-server

docker rmi lightstreamer