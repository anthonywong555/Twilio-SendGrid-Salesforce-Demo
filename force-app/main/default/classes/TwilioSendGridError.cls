public with sharing class TwilioSendGridError {
    @AuraEnabled @InvocableVariable(label='Message' description='The error message.' required=false)
    public String message;

    @AuraEnabled @InvocableVariable(label='Field' description='The field that generated the error.' required=false)
    public String field;

    public TwilioSendGridError() {}
}