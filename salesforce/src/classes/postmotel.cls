public class postmotel {
    public Post_Motel__c p{get;set;}
    public postmotel(){
        p = new Post_Motel__c ();
        
    }
    public void save(){
        insert p;
    }
}