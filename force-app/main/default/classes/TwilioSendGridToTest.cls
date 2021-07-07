@isTest
private class TwilioSendGridToTest {
    
    @isTest
    static void testConstructor() {
        String testEmail = 'test@twilio.com';
        String testName = 'Anthony Wong';
        TwilioSendGridTo testTwilioSendGridTo;

        Test.startTest();
            testTwilioSendGridTo = new TwilioSendGridTo();
            testTwilioSendGridTo.email = testEmail;
            testTwilioSendGridTo.name = testName;
        Test.stopTest();

        System.assertNotEquals(null, testTwilioSendGridTo, 'We expect the object to be not null.');
        System.assertEquals(testEmail, testTwilioSendGridTo.email, 'We expect the "email" should match.');
        System.assertEquals(testName, testTwilioSendGridTo.name, 'We expect the "name" should match.');
    }
}
