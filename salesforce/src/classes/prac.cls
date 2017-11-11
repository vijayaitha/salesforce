public class prac {
public list<service__C>s{get;set;}
public prac(){
s= new list<service__c>();
}
public void save(){
insert s;
}
}