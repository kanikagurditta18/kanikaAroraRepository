trigger  AccountTriggerBeforeUpdate on Account (before update) {
for(Account acc : Trigger.Old) {
        acc.Description = 'old description' ;
        System.debug(acc.Description+'****');
    }
}