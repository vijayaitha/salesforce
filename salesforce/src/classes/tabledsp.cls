public class tabledsp {
public list<complaint__c> s {get;set;}
public void dsp(){
  s=[select name, gro__c from complaint__c ];

}
}