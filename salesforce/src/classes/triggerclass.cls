public class triggerclass {
    public  void duplicating(list<account>acc){
        list<account>ac=[select name from account];
        for(account anew:acc){
            for(account aold:ac){
                if(aold.name==anew.name){
                    anew.name.adderror('the name already exist');
                }
            }
        }
    }
    public  void duplicating2(list<account>acc){
        list<account>ac=[select industry from account];
        for(account anew:acc){
            for(account aold:ac){
                if(aold.industry==anew.industry){
                    anew.name.adderror('the name already exist');
                    
                    
                }
            }
        }
    }
    
    
}