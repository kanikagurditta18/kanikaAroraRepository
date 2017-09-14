/**
 * @Name: LeadInsertion 
 * @Description: It will insert the lead records ,if insertion fails then reason should be displayed in lof object's error field .
 * @Author: Kanika Gurditta
 **/
 public with sharing class LeadInsertion {
     
    public list<Lead>listlead = new  list<Lead>();
   
   /**
     * @Description: inserting lead records .
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
   **/  
    public void leadinsert() {
      //creating 20 valid account records with required fields  
      for( Integer recordcounter =1 ; recordcounter<=20 ; recordcounter++) {
          
          Lead leads = new Lead();
          leads.LastName = 'test'+ recordcounter;
          //leads.Company = 'eternus';
          listlead.add(leads);
      }//end for loop
      
       Database.SaveResult[] srlist = Database.insert(listlead , false);
    
      for(Database.SaveResult sr : srlist) {
        
    
        if(sr.isSuccess()) {
             System.debug('Successfully inserted account. Lead ID: ' + sr.getId());
        }//end if
        
        else {
        // Operation failed, so get all errors                
            for(Database.Error err : sr.getErrors()) {
            System.debug('The following error has occurred.');                    
            System.debug(err.getStatusCode() + ': ' + err.getMessage());
            System.debug('Account fields that affected this error: ' + err.getFields());
            log__c log = new log__c();
            log.Error__c = err.getMessage();
            insert log;
            
          }//end for loop
        }//end else
      }//end loop
    }//end leadinsert
 }//end LeadInsertion