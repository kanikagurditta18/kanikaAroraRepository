@isTest
public with sharing class Account_BillingCityTest {
    public static testmethod void account_creation() {
        list<Account>listaccount1 = new list<Account>();
        for(Integer record_count = 0 ;record_count<=2 ; record_count++) {
        Account account = new Account();
        account.name ='test';
        account.BillingState = 'Maharashtra';
        listaccount1.add(account);
        }
        insert listaccount1;
        test.startTest();
        billingcity bcity = new billingcity();
        bcity.method1();
        list<Account>listacc = [SELECT Name from Account where BillingState = 'Maharashtra' OR BillingState = 'kerela'];
        test.stopTest();
        system.assertEquals(listacc.size(),bcity.listaccount.size());
        }
    }