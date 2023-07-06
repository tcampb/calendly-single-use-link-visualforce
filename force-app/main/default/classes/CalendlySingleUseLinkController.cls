public class CalendlySingleUseLinkController {
    private String bookingUrl;
    public String eventTypeUUID { get; set; }
    
    private class CalendlyRequest {
        public String owner;
        public String owner_type;
        public Integer max_event_count;
        
        CalendlyRequest(String uuid) {
            this.owner = 'https://api.calendly.com/event_types/' + uuid;
            this.owner_type = 'EventType';
            this.max_event_count = 1;
        }
    }
    
    private class CalendlyResource {
        String booking_url;
    }
    
    private class CalendlyResponse {
        public CalendlyResource resource;
    }
    
    public String getLink() {
        HttpRequest req = new HttpRequest();
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('Authorization', 'Bearer {!$Credential.Password}');
        req.setEndpoint('callout:Calendly/scheduling_links');
        req.setMethod('POST');
        String requestBody = System.JSON.serialize(new CalendlyRequest(this.eventTypeUUID));
        req.setBody(requestBody);
        HttpResponse res = new Http().send(req);
        
        CalendlyResponse linkResponse = (CalendlyResponse) JSON.deserialize(res.getBody(), CalendlyResponse.class);
        
        return linkResponse.resource.booking_url;
    }
}