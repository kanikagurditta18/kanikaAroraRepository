/**
 * @Name: InactiveAccountsDeleter 
 * @Description: It deletes all the inactive accounts which where created in last 90 days 
 * @Author: Kanika Gurditta
 **/

 public with sharing class InactiveAccountsDeleter {
 
   @TestVisible public List<Account> listAccount;
 
     /**
     * @Description: print all the anctive employees.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/ 
     
    public void printinactiveaccounts() { 
     
      listAccount = [SELECT Id FROM Account WHERE CreatedDate = LAST_90_DAYS And Active__c ='No'];
   
      System.debug(listAccount);
    
    }//end printinactiveaccounts
 
 }//end InactiveAccountsDeleter