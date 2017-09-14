@isTest
public with sharing class OpportuniFiscalYearTest {
    public static testmethod void  opportunityrecordcreation() {
    
        list<Opportunity> listaccount = new list<Opportunity>();
        Opportunity opp = new Opportunity();
        opp.Name ='test';
        opp.closeDate =Date.newInstance(2017 , 10 ,20);
        opp.StageName ='Closed Won';
        opp.Amount = 100000;
        listaccount.add(opp);
        insert listaccount;
        
        test.startTest();
        
        OpportunityFiscalYear ar = new OpportunityFiscalYear();
        ar.date1 = 2017;
        ar.fiscal_year();
        List<AggregateResult> listopp =[select id, SUM(Amount)  from Opportunity  where Fiscal_Year(createdDate) =2017 group by id ];
        test.stopTest();
        
        system.assertEquals(listopp.size(),ar.list1.size());
    }}