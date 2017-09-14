/**
 * @Name: AccountEnrollmentYear 
 * @Description: print the records of account having enrollmentyear 2010 and 2013,2014.
 * @Author: Kanika Gurditta
 **/
 
 public with sharing class AccountEnrollmentYear {
 
    @TestVisible public List<Account>listaccount;
    @TestVisible public List<Account>accountlist;
    
    /**
     * @Description:Printing records having enrollment year 2010
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
    
    public void printingrecordsofenrollyear2010() {
    
      listaccount =[select name ,id from Account where   Enrollment_Year__c ='2010'];
      System.debug(listaccount);
      
    }//end printingrecordsofenrollyear2010()
    
    /**
     * @Description: Printing records having enrollment year 2013 And 2014
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
    
    public void printingrecordsofenrollyear2013and2014() {
    
      Set<String>listaccounts = new Set<String>();
      listaccounts.add('2013');
      listaccounts.add('2014');
      System.debug(listaccounts);
      
      accountlist = [SELECT Name ,Enrollment_Year__c from Account where Enrollment_Year__c =: listaccounts];
      System.debug(accountlist);
      
    }//end printingrecordsofenrollyear2013and2014
    
 }//end AccountEnrollmentYear