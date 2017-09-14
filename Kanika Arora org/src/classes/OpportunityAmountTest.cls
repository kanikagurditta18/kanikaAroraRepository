@isTest
public with sharing class OpportunityAmountTest {
    public static testmethod void  opportunityrecordcreation() {
    
        list<Opportunity> listaccount = new list<Opportunity>();
        Opportunity opp = new Opportunity();
        opp.Name ='test';
        opp.closeDate =Date.newInstance(1980 , 10 ,20);
        opp.StageName ='Closed Won';
        opp.Amount = 100000;
        listaccount.add(opp);
        insert listaccount;
        delete listaccount;
        test.startTest();
        
        opportunityAmount ar = new opportunityAmount();
        ar.method1();
        List<Opportunity> listOpp = [SELECT Name from Opportunity  where Amount > 10000 OR IsDeleted = true  OFFSET 30];
        
        test.stopTest();
        
        system.assertEquals(listopp.size(),ar.listOpp.size());
    }
    public static testmethod void bulkrecordcreation() {
    
        list<Opportunity> listopp = new list<Opportunity>();
    for(Integer i = 1 ;i<=200 ; i++)
    {
    Opportunity opp = new Opportunity();
        opp.Name ='test'+i;
        opp.closeDate =Date.newInstance(2017 , 10 ,20);
        opp.StageName ='Closed Won';
        opp.Amount = 100000 +i*10;
        listopp.add(opp);
    
    }
    
    insert listopp;
    
    list<opportunity>listoppor = [select id , name from Opportunity where name ='test1'];
    
    delete listoppor;
    test.starttest();
    
    opportunityAmount ar = new opportunityAmount();
        ar.method1();
        List<Opportunity> listOpp1 = [SELECT Name from Opportunity  where Amount > 10000 OR IsDeleted = true  OFFSET 30];
        
        test.stopTest();
        
        system.assertEquals(169,ar.listOpp.size());
}}