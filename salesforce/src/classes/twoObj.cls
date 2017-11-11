public class twoObj {
public complaint__c c{get;set;}
public service__c s{get;set;}



    public twoObj(ApexPages.StandardController controller) {
    c=new complaint__c();
    s= new service__c();

    }
    public pagereference next(){
    pagereference p=new pagereference('/apex/customobjpage');
    p.setredirect(true);
    return p;
    }
    public void save(){
   insert c;
  insert s;
    }

}