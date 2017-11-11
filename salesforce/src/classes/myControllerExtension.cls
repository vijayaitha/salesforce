public class myControllerExtension {

    public myControllerExtension(ApexPages.StandardController controller) {
    

    }
     public pagereference next(){
    pagereference pg=new pagereference('/apex/customobjpage');
    pg.setredirect(true);
    return pg;
    
    }
   }