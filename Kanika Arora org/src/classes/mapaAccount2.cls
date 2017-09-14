public with sharing class mapaAccount2 {
    public void method1() {
        List<Account>listaccount =[select name ,id from Account where   Enrollment_Year__c ='2010'];
        System.debug(listaccount);
    }
}