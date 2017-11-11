public class c3{
list<account> acts=[select name,type,industry,phone from account];
list<account> energy_acts=[select name,type,industry,phone from account where industry='energy'];
public list<account> getacts()
{
return acts;
}
public list<account> getenergy_acts(){
return energy_acts;

}
}