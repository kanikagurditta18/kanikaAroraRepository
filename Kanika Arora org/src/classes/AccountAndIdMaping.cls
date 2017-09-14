/**
 * @Name: AccountAndIdMaping
 * @Description: in this we store accountId as key and Account object as value in MapAccountid
 * @Author: Kanika Gurditta
 **/
 
 public with sharing class AccountAndIdMaping {
 
    //mapAccountId will hold Id as key and Account as value
    @TestVisible public Map<Id,Account> mapAccountId = new Map<Id ,Account>();
   
   /**
     * @Description: creating map of account and id.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/ 
   
   public void accountidmapping() {
     
     //listaccount stores name and id from account
     
     List<Account>listaccount =[select name ,id from Account];
     
    
    
     
        for(Account a: listaccount) {
        
            MapAccountId.put(a.Id ,a);
        }//end for loop
        
        System.debug(MapAccountId);
    }//end accountmapping
 }//end AccountAndIdMaping