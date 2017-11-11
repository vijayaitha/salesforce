public class dsp{
    public void getCon(){
list<account> acc=[select no_of_contacts__c from account];
list<account>accConList=[select name,id,(select lastname from contacts)from account where id =:acc];
list<account> ua=new list<account>();
for(account a:accConList){
    system.debug(a.name);
        list<contact>con=a.contacts;
    if(con.size()>0){
        a.no_of_contacts__c=con.size();
      ua.add(a);  
    }
}
    update ua;
    system.debug(ua);
}
    }