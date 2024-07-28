docker pull httpd

docker run --name my-apache-app -p 8080:80 -d -v ${PWD}:/usr/local/apache2/htdocs/ httpd

docker stop my-apache-app

docker rm my-apache-app

docker rmi httpd