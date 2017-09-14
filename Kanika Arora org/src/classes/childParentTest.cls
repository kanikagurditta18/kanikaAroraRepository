@isTest
public with sharing class childParentTest  {
    public static testmethod void  RecordCreation() {
        A__c Instance2 = new A__c();
        Instance2.Name ='test1';
        Instance2.Email__c ='test1@email.com';
        Instance2.phone__C = '23313232';
        insert Instance2;
        B__c Instance3 = new B__c();
        Instance3.Name ='test2';
        Instance3.Description__c ='Test User';
        insert Instance3;
        
       C__c Instance1 = new C__c();
       Instance1.Name ='test3';
       Instance1.A__c =Instance2.id;
       Instance1.B__c =Instance3.id;
       Instance1.Name__c ='test3';
       //starting test.starttest()
       test.starttest();
       childParent cp = new childParent();
       list<C__c>listC = [Select Name, A__r.phone__c, B__r.Description__c from C__c];
       cp.method1();
       //stop test calling
       test.stopTest();
       System.assertEquals(listC.size() ,cp.list1.size());
    }
    public static testmethod void contact_recordcreation() {
          
        Account acc = new Account();
        acc.Name ='john';
         insert acc;
    
    Contact cont = new Contact();
    cont.FirstName = 'test';
    cont.LastName ='test1';
    cont.AccountId = acc.id;
    insert cont;
    test.startTest();
    childParent cp = new childParent();
    cp.method2();
    list<Account>listcontact1 =[select id, name, (select id, name from Contacts) from account where Name ='john'];
    test.stopTest();
    System.assertEquals(listcontact1.size(),cp.list2.size());
    
}
}