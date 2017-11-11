public class addrecord {
public service__c s {get;set;}
public complaint__c c{get;set;}
public addrecord(){
s= new service__c();
c= new complaint__c();
}
public void addrecodhit(){
insert s;
insert c;


}
}