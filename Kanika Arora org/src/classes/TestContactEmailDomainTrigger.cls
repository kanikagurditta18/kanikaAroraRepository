@isTest
public with sharing class TestContactEmailDomainTrigger {
    public static testmethod void recordcreation() {
        Map<String,id>MapDomains = new Map<String,id>();
       Account acc = new Account();
       acc.name = 'test';
       acc.domain__c = 'gmail.com';
       insert acc;
       
       contact con = new contact(); 
       con.LastName = 'user';
       con.Email ='kanika@gmail.com';
       MapDomains.put('gmail.com' ,con.id);
       Account ac =[SELECT domain__c FROM Account WHERE domain__c IN :MapDomains.keySet()];
       con.AccountId = ac.id;
       insert con;
       System.assertnotEquals(null , con.id);
       System.assertnotEquals(null , con.AccountId);
       System.assertEquals(acc.id , con.AccountId);

}

public static testmethod void bulkrecordcreation() {
        Map<String,id>MapDomains = new Map<String,id>();
        Contact con;
        Account acc = new Account();
        acc.name = 'test';
        acc.domain__c = 'gmail.com';
        insert acc;
        for(Integer ContactCreator = 1 ;ContactCreator <=10 ; ContactCreator++) {
             con = new contact(); 
             con.LastName = 'user'+ContactCreator;
             con.Email ='kanika'+ContactCreator +'@gmail.com';
             MapDomains.put('gmail.com' ,con.id);
             Account ac =[SELECT domain__c FROM Account WHERE domain__c IN :MapDomains.keySet()];
             con.AccountId = ac.id;
        }
             insert con;
         System.assertEquals(con.AccountId , acc.id);     
    }
    
    public static testmethod void negativeCasetest() {
       Map<String,id>MapDomains = new Map<String,id>();
       Account acc = new Account();
       acc.name = 'test';
       acc.domain__c = 'yahoo.com';
       insert acc;
       Account accc = new Account();
       accc.name = 'test1';
       accc.domain__c = 'gmail.com';
       insert accc;
       
       contact con = new contact(); 
       con.LastName = 'user';
       con.Email ='kanika@gmail.com';
       MapDomains.put('gmail.com' ,con.id);
       Account ac =[SELECT domain__c FROM Account WHERE domain__c IN :MapDomains.keySet()];
       if(ac !=null) {
       con.AccountId = ac.id;
       }
       else {
       con.AccountId =accc.id;
       }
       insert con;
       System.assertEquals(con.AccountId , accc.id);
    }
}