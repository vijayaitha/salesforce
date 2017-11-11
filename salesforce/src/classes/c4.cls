public class c4{
list<account> banking_acts=[select name,type,industry,phone from account where industry='banking'];
list<account> energy_acts=[select name,type,industry,phone from account where industry='energy'];
public list<account> getbanking_acts()
{
return banking_acts;
}
public list<account> getenergy_acts(){
return energy_acts;

}
}