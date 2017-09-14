@isTest
public with sharing class AccountContactParentToChildTest {

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
        
        AccountContactParentToChild ap = new AccountContactParentToChild();
        ap.Name1='test';
        ap.accountrecordget();
        list<Account>listAccounts = [select id, name, (select id, name from Contacts) from account where Name='test'];
        
        test.stopTest();
        
        system.assertEquals(listAccounts.size(),ap.listAccount.size());
    }
}