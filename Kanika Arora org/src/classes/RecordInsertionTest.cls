@isTest
 
 /**
 * @Name: RecordInsertionTest 
 * @Description: test class for RecordInsertion.
 * @Author: Kanika Gurditta
 **/
 
 public with sharing class RecordInsertionTest {
   
    /**
     * @Description: creating account single record
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
 
    public static testmethod void accountinsertion() {
      
       //creating account records and adding them to listAccount
      
       list<Account>listAccount = new list<Account>();
       Account accounts = new Account();
       accounts.Name ='Testuser';
       listAccount.add(accounts);
       insert(listAccount);
     
       test.starttest();
       
       //taking instance of class RecordInsertion 
       
       RecordsInsertion rinsert = new RecordsInsertion();
       rinsert.accountrecordcreation();
     
       test.stoptest();
     
       System.assertEquals(listAccount.size() , rinsert.listAccount.size());
     
    }//end accountinsertion
    
    
    /**
     * @Description: creating Lead single record
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
    
    public static testmethod void  Leadrecordsinsertion() {
    
      //creating lead records
    
       list<Lead>listleads = new list<Lead>();
       Lead leads = new Lead();
       leads.LastName = 'kanika';
       leads.Company = 'Eternus Solutions';
       leads.Status = 'Closed-Converted';
       listleads.add(leads);
       insert listleads;
       
       test.starttest();
        
       RecordsInsertion rinsert = new RecordsInsertion();
       rinsert.LeadrecordsCreation();
       test.stopTest();
       
       System.assertEquals(listLeads.size() , rinsert.listlead.size());
        
    }//end Leadrecordsinsertion
     
     /**
     * @Description: creating contact single record
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
     
     public static testmethod void contactrecordinsertion() {
     
       //creating contact records
     
       list<Contact>listcontact = new list<contact>();
       Contact con = new Contact();
       con.LastName = 'kanika';
       Con.Email = 'sbamnbms@gsadhjas.cjshdcjg';
       listcontact.add(con);
       insert listcontact;
       
       test.starttest();
       
       //creating instance of class RecordInsertion 
         
       RecordsInsertion rinsert = new RecordsInsertion();
       rinsert.contactrecordcreation();
        
       test.stopTest();
       
       System.assertEquals(listcontact.size() , rinsert.listcontact.size());
     }//end contactrecordinsertion
    
     /**
     * @Description: creating opportunity single record
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
    
    public static testmethod void OpportunityrecordsInsertion() {
    
      //creating opportunity records
    
      list<Opportunity>listopp = new list<Opportunity>();
      Opportunity opp = new Opportunity();
      opp.Name = 'kanika';
      opp.CloseDate= Date.newInstance(2017, 2, 17);
      opp.StageName ='Closed Won';
      listopp.add(opp);
      insert opp;
      
      test.starttest();
      
      //taking instance of class RecordInsertion 
        
      RecordsInsertion rinsert = new RecordsInsertion();
      rinsert.Opportunityrecordscreation();
        
     test.stopTest();
     
     System.assertEquals(listopp.size() , rinsert.listopp.size());
      
    }//end OpportunityrecordsInsertion
   }//end RecordInsertionTest