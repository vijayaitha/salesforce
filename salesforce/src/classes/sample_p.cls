public class sample_p {
    public void testing()
    {
        /* list<schema.contact> con = [SELECT name from contact LIMIT 2];
System.debug(con);
list<schema.account> acc = [SELECT name,industry from account WHERE industry='Technology' ];
System.debug(acc);
list<schema.account> acc = [SELECT name,industry from account LIMIT 10 OFFSET 5 ];
System.debug(acc);
list<schema.account> acc = [SELECT name,industry from account WHERE Name like 'T%' LIMIT 8 ];
System.debug(acc);
list<schema.account> acc = [SELECT name,industry from account WHERE Name like 'T%' LIMIT 8 ];
System.debug(acc);
list<schema.account> acc = [SELECT name,industry from account ORDER BY industry ASC NULLS FIRST];
System.debug(acc);
list<schema.account> acc = [SELECT industry,count(name) from account GROUP BY industry ];
System.debug(acc);
integer i = [SELECT count() from contact];
System.debug(i);
list<schema.account> acc = [SELECT industry,name,(select lastname from contacts) from account];
for(schema.account a:acc){
System.debug(acc.name);
for(contact c:a.contacts){
system.debug(c.lastname);

}
}
list<schema.contact> con=[select lastname,account.name from contact];
for(contact c:con){
system.debug(c.account.name);
}
list<schema.Contact> c=[Select email,Account.Name From Contact WHERE email like 'b%'];
for(Contact ct : c)
{
ct.Account.Industry='Banking';
ct.account.Rating = 'Hot';
update c.account;
}
List<schema.account> ac = [SELECT Name,(SELECT id FROM contacts) FROM account];
for (account a : ac) {
sysytem.debug(a.contacts.size());
}*/
        
    }
}