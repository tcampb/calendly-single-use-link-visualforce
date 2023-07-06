global class CalendlyHttpCalloutMock implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest req) {
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"resource": { "booking_url": "https://calendly.com/acmesales "} }');
        res.setStatusCode(201);
        return res;
    }
}