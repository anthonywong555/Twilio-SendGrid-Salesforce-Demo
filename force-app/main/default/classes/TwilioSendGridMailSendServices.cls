public with sharing class TwilioSendGridMailSendServices {

    @TestVisible
    private static final String TWILIO_SENDGRID_NAMED_CREDENTIAL = 'Twilio_SendGrid';

    @TestVisible
    private static final String PATH_URL_MAIL_SEND = '/mail/send';

    @TestVisible
    private static final Integer HTTP_RESPONSE_STATUS_ACCEPTED = 202;

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
        String uri = generateURI();
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setEndpoint(uri);
        req.setHeader('Authorization', 'Bearer {!$Credential.Password}');
        req.setHeader('Content-Type', 'application/json');
        req.setBody(aRequest.generateBody());
        HttpResponse response = http.send(req);
        
        TwilioSendGridMailSendResponse aResponse;

        if(response.getStatusCode() == HTTP_RESPONSE_STATUS_ACCEPTED) {
            aResponse = new TwilioSendGridMailSendResponse();
        } else {
            aResponse = TwilioSendGridMailSendResponse.parse(response.getBody());
        }

        // Add Status and Status Code
        aResponse.status = response.getStatus();
        aResponse.statusCode = response.getStatusCode();
        return aResponse;
    }
    
    @TestVisible
    private static String generateURI() {
        String uri = Test.isRunningTest() ? 'http://callout.' + TWILIO_SENDGRID_NAMED_CREDENTIAL + '.com/' + PATH_URL_MAIL_SEND : 'callout:' + TWILIO_SENDGRID_NAMED_CREDENTIAL + PATH_URL_MAIL_SEND;
        return uri;
    }
}