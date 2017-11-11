public class newaddrecord {

public list<complaint__c> com{get;set;}

public newaddrecord() {
com= new list<complaint__c>();
com.add(new complaint__c());

}

public void save(){
insert com;

}
public void addingrow(){
com.add(new complaint__c());

}
public void deletingrow(){
com.remove(com.size()-1);
}
}