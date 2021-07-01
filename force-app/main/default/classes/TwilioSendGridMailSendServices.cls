public with sharing class TwilioSendGridMailSendServices {

    @TestVisible
    private static final String TWILIO_SENDGRID_NAMED_CREDENTIAL = 'Twilio_SendGrid';
    
    @InvocableMethod(label='Mail Send' description='Send Email.' category='Twilio SendGrid')
    public static List<TwilioSendGridMailSendResponse> sendEmail(List<TwilioSendGridMailSendRequest> requests) {
        List<TwilioSendGridMailSendResponse> responses = new List<TwilioSendGridMailSendResponse>();
        
        for(TwilioSendGridMailSendRequest aRequest : requests) {
            TwilioSendGridMailSendResponse aResponse = sendEmail(aRequest);
            responses.add(aResponse);
        }
        
        return responses;
    }
    
    public static TwilioSendGridMailSendResponse sendEmail(TwilioSendGridMailSendRequest aRequest) {
        String path = '/mail/send';
        String uri = generateURI(path);
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setEndpoint(uri);
        req.setHeader('Authorization', 'Bearer {!$Credential.Password}');
        req.setHeader('Content-Type', 'application/json');
        req.setBody(aRequest.generateBody());
        HttpResponse response = http.send(req);
        
        TwilioSendGridMailSendResponse aResponse = TwilioSendGridMailSendResponse.parse(response.getBody());
        return aResponse;
    }
    
    @TestVisible
    private static String generateURI(String path) {
        String uri = Test.isRunningTest() ? 'http://callout.' + TWILIO_SENDGRID_NAMED_CREDENTIAL + '.com/' + path : 'callout:' + TWILIO_SENDGRID_NAMED_CREDENTIAL + path;
        return uri;
    }
}