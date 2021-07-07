@isTest
private class TwilioSendGridMailSendResponseTest {

    @isTest
    static void testConstructor() {
        String testStatus = 'Accepted';
        Integer testStatusCode = 202;
        TwilioSendGridMailSendResponse testTwilioSendGridMailSendResponse;

        Test.startTest();
            testTwilioSendGridMailSendResponse = new TwilioSendGridMailSendResponse();
            testTwilioSendGridMailSendResponse.status = testStatus;
            testTwilioSendGridMailSendResponse.statusCode = testStatusCode;
        Test.stopTest();

        System.assertNotEquals(null, testTwilioSendGridMailSendResponse, 'We expect the object to be not null.');
        System.assertEquals(testStatus, testTwilioSendGridMailSendResponse.status, 'We expect the "status" should match.');
        System.assertEquals(testStatusCode, testTwilioSendGridMailSendResponse.statusCode, 'We expect the "statusCode" should match.');
    }

    @isTest
    static void testParse() {
        String testStatus = 'Accepted';
        Integer testStatusCode = 202;
        String testJSON = '{"status": "' + testStatus + '", "statusCode": ' + testStatusCode + '}';

        TwilioSendGridMailSendResponse testTwilioSendGridMailSendResponse;

        Test.startTest();
            testTwilioSendGridMailSendResponse = TwilioSendGridMailSendResponse.parse(testJSON);
        Test.stopTest();
        
        System.assertNotEquals(null, testTwilioSendGridMailSendResponse, 'We expect the object to be not null.');
        System.assertEquals(testStatus, testTwilioSendGridMailSendResponse.status, 'We expect the "status" should match.');
        System.assertEquals(testStatusCode, testTwilioSendGridMailSendResponse.statusCode, 'We expect the "statusCode" should match.');
    }
}
