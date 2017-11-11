public class newsearch {
public String field1 {get;set;}
public List<department__c> records {get; private set;}

 public newsearch() {
      
       records = new List<department__c>();
 
   }

 public PageReference searchRecords(){

        records = (List<department__c>)[FIND :field1 IN ALL FIELDS RETURNING department__c(name,branch__c,no_of_students__c)] [0];

                return null;
    }

}