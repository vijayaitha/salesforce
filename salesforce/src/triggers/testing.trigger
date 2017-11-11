trigger testing on Account (after insert,before update,after update) {
   // for(account acc:trigger.newmap){
    //acc.phone='8757';
   // system.debug('****print the test1***'+trigger.new);
    if(trigger.isafter &&trigger.isupdate)
       // acc.phone='436';
       system.debug('****print the test2***'+trigger.newmap);
        
    if(trigger.isinsert)
       system.debug('****print the test3***'+trigger.oldmap);
        }