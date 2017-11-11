public class home {
    public post_motel__c Motel{get;set;}
    string keyword;
    List<post_motel__c> results;
    public home(){
        Motel=new post_motel__c();
    }
    public string getkeyword()
    {
        return keyword;
    }
    
    public void setkeyword(string input)
    {
        keyword = input;
    }
    public List<post_motel__c> getresults()
    {
        return results;
    }
    
    public PageReference Find()
    {
        results = (List<post_motel__c>) [Find : keyword in ALL fields RETURNING post_motel__c(Name, Phone__c, state__c,city__c, Email__c, Zip_Code__c )][0];
        return null;
    }
    public pagereference next(){
        pagereference pg= new pagereference('/apex/contactmotel');
        pg.setRedirect(true);
        return pg;
    }
    
    
    public pagereference post(){
        pagereference p= new pagereference('/apex/postmotel');
        p.setRedirect(true);
        return p;
    }
}