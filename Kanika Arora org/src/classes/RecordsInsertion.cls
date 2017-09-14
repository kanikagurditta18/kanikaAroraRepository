/**
 * @Name: RecordsInsertion 
 * @Description: it will create the record in respective objects
 * @Author: Kanika Gurditta
 **/
 
 public with sharing class RecordsInsertion {
 
   @TestVisible public list<Account>listAccount = new list<Account>();
   @TestVisible public list<Lead>listlead = new list<lead>();
   @TestVisible public list<contact>listcontact = new list<contact>();
   @TestVisible public list<Opportunity>listopp = new list<Opportunity>();
   
   /**
     * @Description: creating account records.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/   

   public void accountrecordcreation() {
     
     //account record creation
     
     Account acc = new Account(Name ='rohan');
     listAccount.add(acc);
     insert listAccount;  
    }//end accountrecordcreation
    
    /**
     * @Description: creating lead records.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/   

    public void LeadrecordsCreation() {
    
        //creating lead records
        
        Lead leads = new Lead();
        leads.LastName = 'kanika';
        leads.Company = 'Eternus Solutions';
        leads.Status = 'Closed-Converted';
        listlead.add(leads);
        insert listlead;
        
    }//end LeadrecordsCreation
    
     /**
     * @Description: creating contact records.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/  
    
    public void contactrecordcreation() {
    
       //creating a contact record
    
       Contact con = new Contact();
       con.LastName = 'kanika';
       con.Email ='kansjvhjs@jhsja.xbcjhs';
       listcontact.add(con);
       insert listcontact;
       
    }//end contactrecordcreation
    
    /**
     * @Description: creating opportunity records.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/  
    
    public void Opportunityrecordscreation() {
    
      //creating opportunity records
    
      Opportunity opp = new Opportunity();
      opp.Name = 'kanika';
      opp.CloseDate= Date.newInstance(2017, 2, 17);
      opp.StageName ='Closed Won';
      listopp.add(opp);
      insert opp;
    
    }//end Opportunityrecordscreation
}//end RecordsInsertion