@isTest
public with sharing class AccountRecordsTest {
    public static testmethod void  recordcreation() {
        list<Account> listaccount = new list<Account>();
        Account acc = new Account();
        acc.Name ='test';
        listaccount.add(acc);
        insert listaccount;
        list<contact>listcontact = new list<contact>();
        contact con =new contact();
        con.FirstName ='test';
        con.LastName ='test2';
        con.AccountId = acc.id;
        listcontact.add(con);
        insert con ;
        test.startTest();
        Account_Records ar = new Account_Records();
        ar.method1();
        list<Account>listaccc = [Select Id,Name from Account];
        list<contact>listcon = [Select Id,FirstName,LastName,AccountId from Contact where AccountId IN: listaccc];
        test.stopTest();
        system.assertEquals(listcon.size(),ar.conList.size());
    }
}