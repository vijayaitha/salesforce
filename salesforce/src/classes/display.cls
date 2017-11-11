public class display {
    public void accountRelated()
    {
        account acc=[select no_of_contacts__c from account where name='test191'];
        list<contact>con =[select lastname from contact where accountid=:acc.id];
        if(con.size()>0){
            acc.no_of_contacts__c =con.size();
        update acc;
    }
    }

}