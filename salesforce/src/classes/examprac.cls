public class examprac {

public list<department__c> d{get;set;}
public list<professors__c> s{get;set;}

public  void exampracs(){
list<department__c>dq =[SELECT name,branch__c,(SELECT name,grocery__c,department__c FROM professors__r) FROM department__c];


}

}