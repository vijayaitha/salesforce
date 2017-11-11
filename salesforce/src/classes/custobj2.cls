public class custobj2 {

  

public professors__c p{get;set;}
public pincode__c pc{get;set;}
public service__c s{get;set;}
public custobj2(){
pc=new pincode__c();
p=new professors__c();
s=new service__c();
}
public void saverecords(){
insert pc;
insert p;
insert s;


}
  public PageReference saver() {
  
        return page.account;
    }
}