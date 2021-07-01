public with sharing class TwilioSendGridMailSendResponse {
    
	@InvocableVariable(label='Id' description='Id of the error.' required=false)
    public String id;
    
    public static TwilioSendGridMailSendResponse parse(String json) {
        return (TwilioSendGridMailSendResponse) System.JSON.deserialize(json, TwilioSendGridMailSendResponse.class);
    }
    
}