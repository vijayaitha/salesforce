public class c5{
list<account> acts= new list<account>();
public list<account> getacts(){
return acts;
}
public pagereference direct(){
acts=[select name,type,industry,phone from account where type='customer-direct'];
return null;
}
public pagereference channel(){
acts=[select name,type,industry,phone from account where type='customer-channel'];
return null;
}
}