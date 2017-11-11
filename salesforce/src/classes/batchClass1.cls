global class batchClass1 implements Database.batchable<sobject>{
    
  global database.QueryLocator start(Database.BatchableContext bct){
       database.QueryLocator dq=database.getQueryLocator('select name,technology__c,complaints__c from service__c');
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
    
    global void finish(Database.BatchableContext info){    
        
    }
    
}