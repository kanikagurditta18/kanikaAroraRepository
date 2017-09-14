@isTest
public with sharing class LeadSourceCountTest {

    public static testmethod void account_creation() {
    
        list<Lead>listaccount1 = new list<Lead>();
        for(Integer record_count = 0 ;record_count<=2 ; record_count++) {
        Lead leads = new Lead();
        leads.LastName ='test';
        leads.Company= 'Eternus';
        leads.leadSource = 'web';
        listaccount1.add(leads);
        }
        insert listaccount1;
        List<AggregateResult> listlead =[SELECT  COUNT(leadSource) FROM Lead  where leadsource ='web'];
        
        test.startTest();
        
        LeadSourceCount leadsource = new LeadSourceCount();
        leadsource.lead1 ='web';
        leadsource.leadrecordscount();
       
        test.stopTest();
        
        system.assertEquals(listlead.size(),leadsource.list1.size());
        }
    }