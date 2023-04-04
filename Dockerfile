FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env

WORKDIR /app

COPY DotNet.Docker.csproj .

RUN dotnet restore DotNet.Docker.csproj

COPY . .

RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS build

WORKDIR /app

COPY --from=build-env /app/out .

ENTRYPOINT [ "dotnet", "DotNet.Docker.dll" ]