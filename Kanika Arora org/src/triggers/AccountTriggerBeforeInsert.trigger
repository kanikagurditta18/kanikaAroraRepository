trigger AccountTriggerBeforeInsert on Account (before insert) {

    for(Account a : Trigger.New) {

        a.Description = 'New description';
       System.debug('****'+ a.Description);
    }  

}