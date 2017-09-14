public Class CreateLeadRecords {

public void recordcreation() {
List<Lead>listlead = new List<lead>();
for(Integer recordCounter =1 ; recordCounter <=100;recordCounter++) {
Lead Leds = new Lead();
leds.LastName = 'test';
listlead.add(leds);
}
try
{
insert listlead;
}
Catch(Exception e) {

log__c log = new log__c();
log.Name = 'abc';
log.Error__c = 'please Enter Company Before inserting lead';
    insert log;
}
}
}