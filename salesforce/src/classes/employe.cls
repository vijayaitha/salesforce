public class employe {
    public void getSalary(){
        // employe__c em=[select name from employe__c where name='vijay'];
        
        list<employe__c> emp=[select name,total_salary__c,(select salary__c from employe_salary__r)from employe__c ];
        list<aggregateresult> ag=[select emp__c, sum(salary__c) total, max(salary__c) maximun, min(salary__c) minimum from employe_salary__c group by emp__c ];
        list<employe__c> emc= new list<employe__c>();
        
        map<id, decimal> mp = new map<id, decimal>();
        for(aggregateresult agr:ag){
            mp.put((Id)agr.get('emp__c'), (Decimal)agr.get('total'));           
        }
        system.debug(mp);
        
        for(employe__c e:emp){
            e.total_salary__c=mp.get(e.id);
            emc.add(e);
        }
        update emc;
        system.debug(emc);
    }
}