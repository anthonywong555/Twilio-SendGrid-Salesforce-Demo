public with sharing class TwilioSendGridFrom {
    @AuraEnabled @InvocableVariable(label='Email' description='The \'From\' email address used to deliver the message. This address should be a verified sender in your Twilio SendGrid account.' required=true)
	public String email;

    @AuraEnabled @InvocableVariable(label='Name' description='A name or title associated with the sending email address.' required=false)
    public String name;

    public TwilioSendGridFrom() {}
}