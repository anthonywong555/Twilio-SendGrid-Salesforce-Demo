@isTest
private class TwilioSendGridDynamicTemplateDataTest {
    @isTest
    static void testConstructor() {
        TwilioSendGridDynamicTemplateData testTwilioSendGridDynamicTemplateData;

        Test.startTest();
            testTwilioSendGridDynamicTemplateData = new TwilioSendGridDynamicTemplateData();
        Test.stopTest();

        System.assertNotEquals(null, testTwilioSendGridDynamicTemplateData, 'We expect the object to be not null.');
    }
}