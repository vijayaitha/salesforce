public class autocreation {
   
  public void eg(){
list<account> acc = new list<account>();
list<contact> con = new list<contact>();
for(integer i=0; i<200; i++){
    acc.add(new account(name='test'+i));
}
insert acc;
for(integer i=0; i<200; i++){
    con.add(new contact(lastname='testchild'+i, accountid= acc.get(i).id));
}
insert con;
    }

}