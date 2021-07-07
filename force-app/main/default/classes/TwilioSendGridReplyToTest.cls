@isTest
private class TwilioSendGridReplyToTest {
    @isTest
    static void testConstructor() {
        String testEmail = 'test@twilio.com';
        String testName = 'Anthony Wong';
        TwilioSendGridReplyTo testTwilioSendGridReplyTo;

        Test.startTest();
            testTwilioSendGridReplyTo = new TwilioSendGridReplyTo();
            testTwilioSendGridReplyTo.email = testEmail;
            testTwilioSendGridReplyTo.name = testName;
        Test.stopTest();

        System.assertNotEquals(null, testTwilioSendGridReplyTo, 'We expect the object to be not null.');
        System.assertEquals(testEmail, testTwilioSendGridReplyTo.email, 'We expect the "email" should match.');
        System.assertEquals(testName, testTwilioSendGridReplyTo.name, 'We expect the "name" should match.');
    }
}