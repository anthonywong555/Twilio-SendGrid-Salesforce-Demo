public with sharing class TwilioSendGridMailSendResponse {
    
	@AuraEnabled @InvocableVariable(label='Id' description='Id of the error.' required=false)
    public String id;

    @AuraEnabled @InvocableVariable(label='Errors' description='List of Errors' required=false)
    public List<TwilioSendGridError> errors;

    @AuraEnabled @InvocableVariable(label='Status' description='Retrieves the status message returned for the response.' required=false)
    public String status;

    @AuraEnabled @InvocableVariable(label='Status Code' description='Retrieves the value of the status code returned in the response.' required=false)
    public Integer statusCode;

    public TwilioSendGridMailSendResponse () {}
    
    public static TwilioSendGridMailSendResponse parse(String json) {
        return (TwilioSendGridMailSendResponse) System.JSON.deserialize(json, TwilioSendGridMailSendResponse.class);
    }
    
}