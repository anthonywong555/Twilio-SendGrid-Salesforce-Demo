public with sharing class TwilioSendGridMailSendRequest {
	
    @InvocableVariable(label='Personalizations' description='An array of messages and their metadata.' required=true)
    public List<Personalizations> personalizations;
	public To from_Z; // in json: from
	public To reply_to;
	public String subject;
	public List<Content> content;
	public List<Attachments> attachments; 
	public List<String> categories;
    
    @InvocableVariable(label='Send At' description='A unix timestamp allowing you to specify when your email should be delivered. Scheduling delivery more than 72 hours in advance is forbidden.' required=false)
	public Integer send_at;
	public String batch_id;
	public Asm asm;
	public String ip_pool_name;
	public Mail_settings mail_settings;
	public Tracking_settings tracking_settings; 
	
	public class Mail_settings {
		public Bypass_list_management bypass_list_management;
		public Bypass_list_management footer;
		public Bypass_list_management sandbox_mode;
	}
	
	public class Open_tracking {
		public Boolean enable {get;set;} 
		public String substitution_tag {get;set;} 
	}
	
	public class Content {
		public String type {get;set;} 
		public String value {get;set;} 
	}
	
	public class Tracking_settings {
		public Click_tracking click_tracking {get;set;} 
		public Open_tracking open_tracking {get;set;} 
		public Bypass_list_management subscription_tracking {get;set;} 
	}
	
	public class Asm {
		public Integer group_id {get;set;} 
		public List<Integer> groups_to_display {get;set;} 
	}
	
	public class Click_tracking {
		public Boolean enable {get;set;} 
		public Boolean enable_text {get;set;} 
	}
	
	public class Attachments {
		public String content {get;set;} 
		public String filename {get;set;} 
		public String type {get;set;} 
		public String disposition {get;set;} 
	}
	
	public class Bypass_list_management {
		public Boolean enable {get;set;} 
	}
    
    public String generateBody() {
        return JSON.serialize(this);
    }
}