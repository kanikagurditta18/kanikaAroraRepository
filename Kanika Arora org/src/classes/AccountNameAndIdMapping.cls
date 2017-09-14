/**
 * @Name: AccountRelatedContactPrinter
 * @Description: It will print all the contact related to account
 * @Author: Kanika Gurditta
 **/
 
 public with sharing class AccountNameAndIdMapping {
 
   @TestVisible public Map<String ,Id> mapAccount = new Map<String,Id>();
 
   /**
     * @Description: creating account records.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/ 
 
    public void accountnameidmapping() {
    
      List<Account>listaccount =[select name ,id from Account];
      
      for(Account a: listaccount) {
      
        MapAccount.put(a.name ,a.id);
        
      }//end for loop
        System.debug(MapAccount);
        
    }//end accountnameidmapping
    
 }//end AccountNameAndIdMapping