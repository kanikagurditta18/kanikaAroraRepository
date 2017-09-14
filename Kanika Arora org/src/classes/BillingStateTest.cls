@isTest
public with sharing class BillingStateTest{
    public static testmethod void  recordcreation() {
        list<Account> listaccount = new list<Account>();
        Account acc = new Account();
        acc.Name ='test';
        acc.Enrollment_Year__c ='2010';
        acc.BillingState ='Mumbai';
        listaccount.add(acc);
        insert listaccount;
        List<Account>listaccounts =[SELECT Name from Account where BillingState = 'Maharashtra' OR BillingState = 'kerela'];
        list<Account>lstresult = [SELECT AccountNumber from Account where not( Id IN: listaccounts) ORDER BY BillingState desc LIMIT 10000];
        test.startTest();
        BillingState ey = new BillingState ();
        ey.billingstategetmethod();
        test.stopTest();
        System.assertEquals(lstresult.size() ,ey.lstcity.size());
        }
        public static testmethod void norecordfound() {
         list<Account> listaccount = new list<Account>();
        Account acc = new Account();
        acc.Name ='test';
        acc.Enrollment_Year__c ='2010';
        acc.BillingState ='Maharashtra';
        listaccount.add(acc);
        insert listaccount;
        List<Account>listaccounts =[SELECT Name from Account where BillingState = 'Maharashtra' OR BillingState = 'kerela'];
        list<Account>lstresult = [SELECT AccountNumber from Account where not( Id IN: listaccounts) ORDER BY BillingState desc LIMIT 10000];
        
        test.startTest();
        
        BillingState ey = new BillingState ();
        ey.billingstategetmethod();
        
        test.stopTest();
        
        System.assertEquals(0,lstresult.size());
        }
        public static testmethod void bulkrecordinsertion() {
        list<Account> listacc = new list<Account>();
        for(Integer i =0;i<20;i++) {
        Account acc = new Account();
        acc.Name = 'test'+i;
        acc.BillingState ='Maharashta';
        listacc.add(acc);
        }
        for(Integer countrecords =20;countrecords<41; countrecords++) {
        Account acc1 = new Account();
        acc1.Name = 'test'+countrecords ;
        acc1.BillingState ='mumbai';
        listacc.add(acc1);
        }
        insert listacc;
        
         List<Account>listaccounts =[SELECT Name from Account where BillingState = 'Maharashtra' OR BillingState = 'kerela'];
        list<Account>lstresult = [SELECT AccountNumber from Account where not( Id IN: listaccounts) ORDER BY BillingState desc LIMIT 10000];
        
        test.startTest();
        
        BillingState ey = new BillingState ();
        ey.billingstategetmethod();
        
        test.stopTest();
        
        System.assertEquals(lstresult.size() ,ey.lstcity.size());
        
        }
        }