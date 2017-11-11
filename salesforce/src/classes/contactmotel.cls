public class contactmotel {
    public string subject;
    public string email_body;
    public string replayTo{get;set;}
    public post_Motel__c c{get;set;}
    public id name{get;set;}
    
    public contactmotel(){
        c = new post_Motel__c ();
        name = apexpages.currentpage().getparameters().get('id');
    }
    public pagereference savepost(){
        c.user__c = name;
        insert c; 
        setEntityAttachments();
        pagereference p=new pagereference('/Apex/homesearch');
        p.setRedirect(true);
        return p;
    }
     public void setEntityAttachments(){
        Messaging.SingleEmailMessage Email = new Messaging.SingleEmailMessage();
        string iid=c.user__c;
            registration__c motelEmail = [select Name,email__c from registration__c where id =:iid];
        subject=c.message__c;
        replayTo=c.email__c;
        email_body = 'Greetings '+motelEmail.Name+'\n\n';
        email_body +='This is '+c.Name+'\n\n';
        email_body +=c.service__c+'\n\n';
        email_body +='Thanks From \n'+c.Name+'\n'+c.Email__c;
            string Sid = motelemail.Email__c;
            email.setSubject(subject);
            email.setPlainTextBody(email_body);
            email.setreplyto(replayTo);
            email.toaddresses= new string[]{Sid};
        messaging.SendEmailResult[] r = messaging.sendEmail(new Messaging.SingleEmailMessage[] {Email});
     }
}