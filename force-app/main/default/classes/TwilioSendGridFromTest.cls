@isTest
private class TwilioSendGridFromTest {

    @isTest
    static void testConstructor() {
        String testEmail = 'test@twilio.com';
        String testName = 'Anthony Wong';
        TwilioSendGridFrom testTwilioSendGridFrom;

        Test.startTest();
            testTwilioSendGridFrom = new TwilioSendGridFrom();
            testTwilioSendGridFrom.email = testEmail;
            testTwilioSendGridFrom.name = testName;
        Test.stopTest();

        System.assertNotEquals(null, testTwilioSendGridFrom, 'We expect the object to be not null.');
        System.assertEquals(testEmail, testTwilioSendGridFrom.email, 'We expect the "email" should match.');
        System.assertEquals(testName, testTwilioSendGridFrom.name, 'We expect the "name" should match.');
    }
}