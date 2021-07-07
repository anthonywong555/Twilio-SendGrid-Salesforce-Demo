@isTest
private class TwilioSendGridMailSendRequestTest {
    @isTest
    static void testConstructor() {
        String testEmail = 'test@twilio.com';
        TwilioSendGridFrom testFrom = new TwilioSendGridFrom();
        testFrom.email = testEmail;
        TwilioSendGridMailSendRequest testTwilioSendGridMailSendRequest;

        Test.startTest();
            testTwilioSendGridMailSendRequest = new TwilioSendGridMailSendRequest();
            testTwilioSendGridMailSendRequest.from_Z = testFrom;
        Test.stopTest();

        System.assertNotEquals(null, testTwilioSendGridMailSendRequest, 'We expect the object to be not null.');
        System.assertEquals(testEmail, testTwilioSendGridMailSendRequest.from_Z.email, 'We expect the "email" to match.');
    }

    @isTest
    static void testGenerateBody() {
        String testEmail = 'test@twilio.com';
        TwilioSendGridFrom testFrom = new TwilioSendGridFrom();
        testFrom.email = testEmail;

        TwilioSendGridMailSendRequest testTwilioSendGridMailSendRequest = new TwilioSendGridMailSendRequest();
        testTwilioSendGridMailSendRequest.from_Z = testFrom;

        String resultJSON;

        Test.startTest();
            resultJSON = testTwilioSendGridMailSendRequest.generateBody();
        Test.stopTest();

        System.assertNotEquals(null, resultJSON, 'We expect the json to be not null.');
        System.assert(!resultJSON.contains('from_Z'), 'We expect the "from_Z" should not be in the json.');
        System.assert(resultJSON.contains(testEmail), 'We expect the "email" should be in the json.');
        
    }
}