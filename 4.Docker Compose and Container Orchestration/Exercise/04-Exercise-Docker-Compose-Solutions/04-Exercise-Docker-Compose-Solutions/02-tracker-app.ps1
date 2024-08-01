docker build . -t udarensamolet/tracker_app

docker login

docker push udarensamolet/tracker_app

docker run --name tracker_app -p 80:80 udarensamolet/tracker_app

docker stop tracker_app

docker rmi udarensamolet/tracker_app