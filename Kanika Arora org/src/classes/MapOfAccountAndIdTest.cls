@isTest
public with sharing class MapOfAccountAndIdTest{
    public static testmethod void recordtestcreation() {
       
        Account acc = new Account();
        acc.Name='Test';
        insert acc;
        List<Account>listaccount =[select name ,id from Account];
        Map<Id ,Account> mapAccount = new Map<Id,Account>();
        for(Account a: listaccount) {
          MapAccount.put(a.id ,a);
        }
        
        test.startTest();
        
        MapOfAccountNameId CR = new MapOfAccountNameId ();
        CR.accountnameidmapping();
        
        test.stopTest();
        
        System.assertEquals(mapAccount.size(),CR.mapAccount.size());
    }
    public static testmethod void norecordexist() {
      
        List<Account>listaccount =[select name ,id from Account];
        Map<Id ,Account> mapAccount = new Map<Id,Account>();
        for(Account a: listaccount) {
          MapAccount.put(a.id ,a);
        }
        
        test.startTest();
        
        MapOfAccountNameId CR = new MapOfAccountNameId ();
        CR.accountnameidmapping();
        
        test.stopTest();
        
        System.assertEquals(0,mapAccount.size());
    }
    
    
    }