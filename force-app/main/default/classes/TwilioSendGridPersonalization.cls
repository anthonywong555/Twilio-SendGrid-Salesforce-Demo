public with sharing class TwilioSendGridPersonalization {
    @AuraEnabled @InvocableVariable(label='From' description='Object of From' required=false)
	public TwilioSendGridFrom from_Z;

    @AuraEnabled @InvocableVariable(label='To' description='Array of To' required=false)
    public List<TwilioSendGridTo> to;

    @AuraEnabled @InvocableVariable(label='Subject' description='The subject of your email. See character length requirements according to RFC 2822.' required=false)
    public String subject;

    @AuraEnabled @InvocableVariable(label='Dynamic Template Data' description='Dynamic template data is available using Handlebars syntax in Dynamic Transactional Templates. This field should be used in combination with a Dynamic Transactional Template, which can be identified by a `template_id` starting with `d-`. This field is a collection of key/value pairs following the pattern \"variable_name\":\"value to insert\".' required=false)
    public TwilioSendGridDynamicTemplateData dynamic_template_data;

    @AuraEnabled @InvocableVariable(label='Send At' description='A unix timestamp allowing you to specify when you want your email to be delivered. This may be overridden by the send_at parameter set at the personalizations level. Delivery cannot be scheduled more than 72 hours in advance.' required=false)
    public Integer send_at;

    public TwilioSendGridPersonalization() {}
}