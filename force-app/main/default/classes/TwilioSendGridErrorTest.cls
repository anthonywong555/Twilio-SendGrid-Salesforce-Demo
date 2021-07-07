@isTest
private class TwilioSendGridErrorTest {

    @isTest
    static void testConstructor() {
        String testMessage = 'message';
        String testField = 'field';
        TwilioSendGridError testTwilioSendGridError;

        Test.startTest();
            testTwilioSendGridError = new TwilioSendGridError();
            testTwilioSendGridError.message = testMessage;
            testTwilioSendGridError.field = testField;
        Test.stopTest();

        System.assertNotEquals(null, testTwilioSendGridError, 'We expect the object to be not null.');
        System.assertEquals(testMessage, testTwilioSendGridError.message, 'We expect the "message" should match.');
        System.assertEquals(testField, testTwilioSendGridError.field, 'We expect the "field" should match.');
    }
}