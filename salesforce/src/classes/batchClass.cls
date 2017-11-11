global class batchClass implements Database.batchable<sobject>{
    
    global database.QueryLocator start(Database.BatchableContext bct){
        database.QueryLocator dq=database.getQueryLocator('select name,gro__c,technology__c from service__c');
        return dq;
        
    }    
    global void execute(Database.BatchableContext bct, List<sobject> sobjlist){
        
        
        for(sobject sobj : sobjlist){
            service__c s=(service__c) sobj;
            s.technology__c='java';
            s.complaints__c= 2;
        }
        
        update sobjlist;
        
    }    
    
    global void finish(Database.BatchableContext bct){    
        AsyncApexJob a = [Select Id, Status,ExtendedStatus,NumberOfErrors, JobItemsProcessed,TotalJobItems, CreatedBy.Email    from AsyncApexJob where Id =:Bct.getJobId()];

   
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

        String[] toAddresses = new String[] {a.CreatedBy.Email,'vijayaitha@ymail.com'};
            system.debug('mail sent to vijay aitha');

        mail.setToAddresses(toaddresses);

        mail.setSubject('Match Merge Batch ' + a.Status);

        mail.setPlainTextBody('records processed ' + a.TotalJobItems +   'with '+ a.NumberOfErrors + ' failures.');

        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});

    }
    /*public void send(){
        system.debug('************************entering in to send email method');
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();        
        
        mail.ToAddresses= new String[]{'0034100000rBzIr'}; //{a.CreatedBy.Email};
            
        mail.Subject='hello';
        
        mail.PlainTextBody='hey hello hai';
        
        Messaging.sendEmailresult[] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});

        system.debug('************************Leaving from send email method');
    }*/

        
    }