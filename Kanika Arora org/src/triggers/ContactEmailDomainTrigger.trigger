trigger ContactEmailDomainTrigger on Contact (before insert) {
    Map<String, Id> domains = new Map<String, Id>();
for(Contact record: Trigger.new) {
    domains.put(record.Emaildomain__c, null);
}
for(Account record: [SELECT domain__c FROM Account WHERE domain__c IN :domains.keySet()]) {
    domains.put(record.domain__c, record.Id);
}
for(Contact record: Trigger.new) {
    if(domains.get(record.Emaildomain__c) != null) {
        record.AccountId = domains.get(record.Emaildomain__c);
    }
} 
}