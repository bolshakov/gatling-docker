FROM openjdk:8-alpine
MAINTAINER "Tema Bolshakov <either.free@gmail.com>"

# Raise max file descriptors
COPY files/security-nofiles-limit.conf /etc/security/limits.d/20-nofiles.conf

RUN apk update && \
    apk add ca-certificates && \
    update-ca-certificates

# Gatling version to download
ARG version

RUN wget "http://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/$version/gatling-charts-highcharts-bundle-$version-bundle.zip" -O gatling.zip && \
    unzip gatling.zip && \
    rm gatling.zip && \
    mv gatling-charts-highcharts-bundle-$version /gatling

RUN mkdir -p /gatling/{logs,reports,results}

WORKDIR '/gatling'
ENTRYPOINT ["/gatling/bin/gatling.sh"]

