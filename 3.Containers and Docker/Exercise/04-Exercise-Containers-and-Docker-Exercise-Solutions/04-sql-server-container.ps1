docker run `
-e ACCEPT_EULA=Y `
-e MSSQL_SA_PASSWORD=yourStrongPassword12# `
-p 1433:1433 `
-v sqldata:/var/opt/mssql `
-d mcr.microsoft.com/mssql/server

docker stop objective_keller

docker run `
-e ACCEPT_EULA=Y `
-e MSSQL_SA_PASSWORD=yourStrongPassword12# `
-p 1433:1433 `
-v sqldata:/var/opt/mssql `
-d mcr.microsoft.com/mssql/server

docker volume ls

docker stop quizzical_wu

docker remove quizzical_wu

docker rmi mcr.microsoft.com/mssql/server
