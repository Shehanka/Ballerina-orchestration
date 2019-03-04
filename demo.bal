import ballerina/http;
import ballerina/docker;

@docker:Expose{
    
}
endpoint http: Listener listener {
    port: 9090
};

@http:ServiceConfig {
    basePath: "/"
}

@docker:Config {
    name: "my-app"
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