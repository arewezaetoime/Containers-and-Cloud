docker pull ghost

docker run --name ghost-container -p 3001:2368 -d -e NODE_ENV=development ghost

docker stop ghost-container

docker remove ghost-container

docker rmi ghost