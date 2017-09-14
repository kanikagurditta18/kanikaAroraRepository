@isTest
public with sharing class EnrollYearTest{
    public static testmethod void  recordcreation() {
        list<Account> listaccount = new list<Account>();
        Account acc = new Account();
        acc.Name ='test';
        acc.Enrollment_Year__c ='2010';
        listaccount.add(acc);
        insert listaccount;
        List<Account>listaccounts =[select name ,id from Account where Enrollment_Year__c ='2010'];
        test.startTest();
        EnrollYear  ey = new EnrollYear();
        ey.enrollyear2010();
        test.stopTest();
        System.assertEquals(listaccounts.size() ,ey.listaccount.size());
        }
      public static testmethod void enrollyear2013and2014test() {
      list<Account> listaccount = new list<Account>();
      for(Integer i = 3 ; i<=5 ;i++) {
        Account acc1 = new Account();
        acc1.Name ='test'+i;
        acc1.Enrollment_Year__c ='201'+(i);
        listaccount.add(acc1);
        }
        insert listaccount;
        
        list<String>listyear = new list<String>();
         listyear.add('2013');
        listyear.add('2014');
        list<Account>listacc = [SELECT Name ,Enrollment_Year__c from Account where Enrollment_Year__c =:listyear];
        
        test.startTest();
       EnrollYear en = new EnrollYear();
       en.enrollyear2013and2014();
       test.stopTest();
       
       System.assertEquals(listacc.size() ,en.list1.size());
        
        }
        }