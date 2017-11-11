public class searching {
public String field1 {get;set;}
public List<department__c> rec {get; private set;}

 public searching() {
      
       rec = new List<department__c>();
 
   }

 public PageReference searchRecord(){

        rec = [select name,branch__c from department__c where name like :('%' + field1 + '%')];

                return null;
    }

}