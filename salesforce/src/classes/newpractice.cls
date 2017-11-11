public class newpractice {
public motels__c m{get;set;}
public string str{get;set;}
//List<list<SObject>> searchList = new List<List<SObject>>();
public newpractice(){
m=new motels__c();


}
public void saverecords(){
insert m;

}
public pagereference insoslResults() {

List<List<SObject>> searchList= [FIND 'str' IN ALL FIELDS RETURNING motels__c,registration__c,Post_Motel__c];
system.debug(searchList);
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