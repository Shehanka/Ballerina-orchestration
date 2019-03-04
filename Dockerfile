#Auto generated Dockerfile

FROM ballerina/ballerina-runtime:0.990.3
LABEL key="value"

COPY demo.balx /home/ballerina

EXPOSE 9090

CMD ballerina run demo.balx