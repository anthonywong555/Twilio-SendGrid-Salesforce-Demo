public with sharing class TwilioSendGridMailSendRequest {

    @AuraEnabled @InvocableVariable(label='Personalizations' description='An array of messages and their metadata.' required=true)
    public List<TwilioSendGridPersonalization> personalizations;

    @AuraEnabled @InvocableVariable(label='From' description='Object of From' required=true)
    public TwilioSendGridFrom from_Z;

    @AuraEnabled @InvocableVariable(label='Reply To' description='Object of ReplyTo' required=false)
    public TwilioSendGridReplyTo reply_to;

    @AuraEnabled @InvocableVariable(label='Subject' description='The global or \'message level\' subject of your email. This may be overridden by subject lines set in personalizations.' required=true)
    public String subject;

    @AuraEnabled @InvocableVariable(label='Content' description='An array where you can specify the content of your email. You can include multiple MIME types of content, but you must specify at least one MIME type. To include more than one MIME type, add another object to the array containing the type and value parameters.' required=true)
    public List<TwilioSendGridContent> content;
    
    @AuraEnabled @InvocableVariable(label='Template Id' description='An email template ID. A template that contains a subject and content — either text or html — will override any subject and content values specified at the personalizations or message level.' required=false)
    public String template_id;

    @AuraEnabled @InvocableVariable(label='Send At' description='A unix timestamp allowing you to specify when you want your email to be delivered. This may be overridden by the send_at parameter set at the personalizations level. Delivery cannot be scheduled more than 72 hours in advance.' required=false)
    public Integer send_at;

    public TwilioSendGridMailSendRequest() {}

    public String generateBody() {
        String result = JSON.serialize(this, true);
        // String replace
        result = result.replace('from_Z', 'from');
        
        return result;
    }
}