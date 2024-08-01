docker build ./frontend -t frontend_image

docker build ./backend -t backend_image

docker network create react-express

docker network create express-mongo

docker run -dit `
--name frontend `
-p 3000:3000 `
-v ./frontend:/usr/src/app `
-v /usr/src/app/node_modules `
--network react-express `
frontend_image

docker run -dit `
--name backend `
-v ./backend:/usr/src/app `
-v /usr/src/app/node_modules `
--network react-express `
backend_image

docker network connect express-mongo backend

docker run -dit `
--name mongo `
-v ./data:/data/db `
--network express-mongo `
mongo:latest