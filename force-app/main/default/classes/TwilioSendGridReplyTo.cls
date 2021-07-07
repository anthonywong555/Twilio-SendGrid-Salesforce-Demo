public with sharing class TwilioSendGridReplyTo {
    @AuraEnabled @InvocableVariable(label='Email' description='The email address where any replies or bounces will be returned. format: email' required=true)
	public String email;

    @AuraEnabled @InvocableVariable(label='Name' description='A name or title associated with the reply_to email address.' required=false)
    public String name;

    public TwilioSendGridReplyTo() {}
}