public class detailpage {
   
public service__c s {get;set;}
           
       public complaint__c c {get;set;}
       
        
          public detailpage(){
      
              s= new service__c();
              c = new complaint__c();
              
                    } 
      
      public void save(){
      
          insert s;
          insert c;
          
      }
      
       }