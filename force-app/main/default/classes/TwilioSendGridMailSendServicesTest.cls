@isTest
private class TwilioSendGridMailSendServicesTest {

    static TwilioSendGridMailSendRequest request;
    
    private class TwilioSendGridMailSendHttpResponseGenerator implements HttpCalloutMock {
        
        public HTTPResponse respond(HTTPRequest req) {
            String uri = req.getEndpoint();
            String body = req.getBody();

            String expectedURI = TwilioSendGridMailSendServices.generateURI();
            String expectedPayload = request.generateBody();
            
            System.assertEquals(expectedURI, uri, 'We expect that URL should match.');
            System.assertEquals('POST', req.getMethod(), 'We expect that the URL Method is Post.');
            
            HttpResponse response = new HttpResponse();

            response.setHeader('Content-Type', 'application/json');
            response.setStatusCode(TwilioSendGridMailSendServices.HTTP_RESPONSE_STATUS_ACCEPTED);

            return response;
        }
	}

    static void setup() {
        // Generate the Mock
        Test.setMock(HttpCalloutMock.class, new TwilioSendGridMailSendHttpResponseGenerator());
    }

    @isTest
    static void testSendEmailList() {
        setup();

        // Setup the Request
        request = new TwilioSendGridMailSendRequest();
        List<TwilioSendGridMailSendRequest> requests = new List<TwilioSendGridMailSendRequest>{request};
        List<TwilioSendGridMailSendResponse> responses;

        Test.startTest();
            responses = TwilioSendGridMailSendServices.sendEmail(requests);
        Test.stopTest();

        System.assertEquals(requests.size(), responses.size(), 'We expect the number of requests equals to the number of responses');

        for(TwilioSendGridMailSendResponse aResponse : responses) {
            System.assertNotEquals(null, aResponse, 'We expect the object to not be null.');
            System.assertEquals(
                TwilioSendGridMailSendServices.HTTP_RESPONSE_STATUS_ACCEPTED,
                aResponse.statusCode,
                'We expect the "statusCode" to match.'
            );
        }
    }

    @isTest
    static void testSendEmail() {
        setup();

        // Setup the Request
        request = new TwilioSendGridMailSendRequest();
        TwilioSendGridMailSendResponse response;

        Test.startTest();
            response = TwilioSendGridMailSendServices.sendEmail(request);
        Test.stopTest();

        System.assertNotEquals(null, response, 'We expect the object to not be null.');
        System.assertEquals(
            TwilioSendGridMailSendServices.HTTP_RESPONSE_STATUS_ACCEPTED,
            response.statusCode,
            'We expect the "statusCode" to match.'
        );
    }
}