public class motels {
    
public motels__c m{get;set;}
public string str{get;set;}

public motels(){
m=new motels__c();
List<list<SObject>> searchList = new List<List<SObject>>();

}
public void saverecords(){
insert m;

}
public PageReference soslResults() {
List<List<SObject>> searchList= [FIND 'str' IN ALL FIELDS RETURNING motels__c(No_of_Persons__c),registration__c,Post_Motel__c,Contact_Motel__c];
 motels__c[] m = ((List< motels__c>)searchList[0]);
 registration__c[] r = ((List<registration__c>)searchList[1]);
 Post_Motel__c[] p = ((List<Post_Motel__c>)searchList[2]);
Contact_Motel__c[] c= ((List<Contact_Motel__c>)searchList[3]);

 return null;
}

       
public pagereference next(){
pagereference p=new pagereference('/apex/postmotel');
return p;
}
public pagereference register(){
pagereference p=new pagereference('/apex/registration');
return p;
}
  
}