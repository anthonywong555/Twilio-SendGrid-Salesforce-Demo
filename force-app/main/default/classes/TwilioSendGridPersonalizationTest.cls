@isTest
private class TwilioSendGridPersonalizationTest {

    @isTest
    static void testConstructor() {
        String testSubject = 'Test Subject';
        Integer testSendAt = 555;
        TwilioSendGridPersonalization testTwilioSendGridPersonalization;

        Test.startTest();
        testTwilioSendGridPersonalization = new TwilioSendGridPersonalization();
        testTwilioSendGridPersonalization.subject = testSubject;
        testTwilioSendGridPersonalization.send_at = testSendAt;
        Test.stopTest();

        System.assertNotEquals(null, testTwilioSendGridPersonalization, 'We expect the object to be not null.');
        System.assertEquals(testSubject, testTwilioSendGridPersonalization.subject, 'We expect the "subject" should match.');
        System.assertEquals(testSendAt, testTwilioSendGridPersonalization.send_at, 'We expect the "send_at" should match.');
    }
}