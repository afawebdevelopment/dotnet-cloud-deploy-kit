FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

WORKDIR /src

COPY src/SampleApi/*.csproj ./SampleApi/

RUN dotnet restore ./SampleApi/SampleApi.csproj

COPY src/SampleApi/. ./SampleApi/

WORKDIR /src/SampleApi

RUN dotnet publish -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app

COPY --from=build /app/publish .

EXPOSE 8080

ENTRYPOINT ["dotnet", "SampleApi.dll"]