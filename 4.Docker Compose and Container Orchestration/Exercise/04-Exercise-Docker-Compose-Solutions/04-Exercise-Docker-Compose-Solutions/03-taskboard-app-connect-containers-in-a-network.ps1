docker network create taskboard_network

docker run `
-e ACCEPT_EULA=Y `
-e MSSQL_SA_PASSWORD=yourStrongPassword12# `
-p 1433:1433 `
-v sqldata:/var/opt/mssql `
--rm --network taskboard_network --name sqlserver `
-d mcr.microsoft.com/mssql/server

docker build . -f ./TaskBoard.WebApp/Dockerfile -t udarensamolet/taskboard_app

docker run -d `
>> -p 5000:80 --rm `
>> --name web_app `
>> --network taskboard_network `
>> udarensamolet/taskboard_app