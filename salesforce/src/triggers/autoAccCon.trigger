trigger autoAccCon on Account (after insert) {
    /* list<account> acc= trigger.new;
acc[0].name='sai';
acc[0].phone='211245';
acc[0].industry='technology';
insert acc;
list<contact> con=new list<contact>();
con[0].email='sai34@gmail.com';
con[0].lastName='rkl';
con[0].accountid=acc.id;
insert con;
system.debug(con+''+acc);*/
    list<contact>co=new list<contact>();
    
    for (account acc:trigger.new){
        // acc.name='testing';
        contact con=new contact();
        con.lastname='vjai';
        // con.phone='43245';
        con.accountid=acc.id;
        co.add(con);
        
    }
    insert co;
    system.debug(co);
}