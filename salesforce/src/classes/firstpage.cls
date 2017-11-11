public class firstpage {

    public professors__c p {get;set; }
    public firstpage(){
    p=new professors__C();
    
 
    }
    
    public pagereference next(){
    insert p;
    
    
    return page.thirdpage;
    
    
    }
    public pagereference back(){
    Pagereference pg =  new Pagereference('/apex/secondpage');
pg.setRedirect(true);
return pg;
    }
    public void inser(){
    
    update p;
    }
}