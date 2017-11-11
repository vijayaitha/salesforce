public class registration {
public Registration__c r{get;set;}
public registration(){
r = new Registration__c ();

}
public void save(){
insert r;
}
}