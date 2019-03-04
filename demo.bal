import ballerina/http;

endpoint http: Listener listener {
    port: 8080
};

@http:ServiceConfig {
    basePath: "/"
}

service<http:Service> helloWorld bind listener {
    @http:ResourceConfig {
        path: "/"
    }

    sayHello(endpoint outBoundEP, http:Request request) {
        http:Response response = new;
        response.setTextPayload("Hello world! \n");
        _ = outboundEP->respond(response);
    }
}