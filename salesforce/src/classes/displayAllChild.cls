public class displayAllChild {
    public void allAccount(){
        list<account> acc=[select id,name from account];
        list<account> accToCon =[select name,id,(select firstname,lastname from contacts) from account where id=:acc];
        list<account> acopp=[select name,(select name from Opportunities)from account where id=:acc ];
        list<account> updateacc=new list<account>();
        for(account a:accToCon){
            list<contact> con  =a.contacts;
            system.debug('****'+con);
            string s='';
            for(contact c:con){
                s+=c.FirstName+' '+c.LastName+';';
            }
            a.all_contact_names__c=s;
            updateacc.add(a);
            
        }
        update updateacc;
        for(account ap:acopp){
            list<Opportunity>opp=ap.Opportunities;
            string g='';
            for(opportunity ops:Opp){
                g+=ops.name+';';
                ap.total_oppurtunities__c =g;
                updateacc.add(ap);
            }
            
        }
        update updateacc;
        system.debug(updateacc);       
        
    }
    
 }