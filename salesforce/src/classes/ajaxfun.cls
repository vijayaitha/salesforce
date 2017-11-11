public class ajaxfun {

public string st{get;set;}
public complaint__c c{get;set;}
 public  ajaxfun() {
    c=new complaint__c ();

       
    }



public pagereference ajaxevent(){
pagereference p=new pagereference('/apex/extensioncontroller');
return p;
}
}