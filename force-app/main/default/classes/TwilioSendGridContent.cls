public with sharing class TwilioSendGridContent {
    @AuraEnabled @InvocableVariable(label='Type' description='The MIME type of the content you are including in your email (e.g., “text/plain” or “text/html”).' required=true)
	public String type;

    @AuraEnabled @InvocableVariable(label='Value' description='The actual content of the specified MIME type that you are including in your email.' required=true)
    public String value;

    public TwilioSendGridContent() {}
}