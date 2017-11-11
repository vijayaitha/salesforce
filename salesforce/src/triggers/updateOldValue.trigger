trigger updateOldValue on Account (before update) {
    for(account acc:trigger.new){
     map<id,account> oldacc=trigger.oldmap;
        account acold=oldacc.get(acc.id);
        if(acc.name!=acold.name){
            acc.old_account_name__c=acold.name;
            system.debug(acc);
        }
        
    }

}