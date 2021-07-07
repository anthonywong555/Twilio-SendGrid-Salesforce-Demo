@isTest
private class TwilioSendGridContentTest {
    
    @isTest
    static void testConstructor() {
        String testType = 'text/plain';
        String testValue = 'Hello World';
        TwilioSendGridContent testTwilioSendGridContent;

        Test.startTest();
            testTwilioSendGridContent = new TwilioSendGridContent();
            testTwilioSendGridContent.type = testType;
            testTwilioSendGridContent.value = testValue;
        Test.stopTest();

        System.assertNotEquals(null, testTwilioSendGridContent, 'We expect the object to be not null.');
        System.assertEquals(testType, testTwilioSendGridContent.type, 'We expect the "type" should match.');
        System.assertEquals(testValue, testTwilioSendGridContent.value, 'We expect the "value" should match.');
    }
}
