public class AccountOpportunity{
public void records(){
list<Account> listacc = [SELECT Name,(Select StageName from Opportunities where StageName ='Closed Won') from Account where id IN (Select AccountId from opportunity where StageName ='Closed Won')];
for(Account acc : listacc) {
System.debug(acc);
}
}
public void method2() {
List<A__c> listA = [select Name,(select Name from Cs__r)from A__c where id In(select A__c from C__c where name ='john')];
for(A__c ac:listA)
system.debug(ac);
}
}