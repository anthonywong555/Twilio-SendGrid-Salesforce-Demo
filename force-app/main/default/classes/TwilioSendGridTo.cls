public with sharing class TwilioSendGridTo {
    @AuraEnabled @InvocableVariable(label='Email' description='The intended recipient\'s email address.' required=false)
	public String email;

    @AuraEnabled @InvocableVariable(label='Name' description='The intended recipient\'s name.' required=false)
    public String name;

    public TwilioSendGridTo() {}
}
