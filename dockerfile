#FROM ymazieres/dotnet:compile
FROM microsoft/dotnet

COPY src /src
COPY /script/setup.sh /src/setup.sh

RUN chmod +x /src/setup.sh

ENTRYPOINT ["sh","./setup.sh"]

EXPOSE 5000

ENV ASPNETCORE_URLS http://+:5000

WORKDIR /src
