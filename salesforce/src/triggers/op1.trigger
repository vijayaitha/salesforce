trigger op1 on Opportunity (before insert,before update) {
for(opportunity o:trigger.new)
if(trigger.isInsert && o.amount<10000)
o.adderror('enter greater value');
else if(trigger.isUpdate && o.amount<5000)
o.adderror('enter as condition');
}