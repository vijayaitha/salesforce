public class custobj {
public professors__c p{get;set;}
public  pincode__c pc{get;set;}

public professors__c ref;
    public pagereference next(){
        insert p;
        ref=p;
         pagereference cust2 = new pagereference('/apex/account');
        return cust2;
        
    }
    public pagereference save(){
         
        pc.professors__c=ref.id;
        insert pc;
        system.debug('***end***'+p);
        return null;
        
    }
    public custobj(){
      p = new professors__c();
      pc = new pincode__c();
    } 
    
}