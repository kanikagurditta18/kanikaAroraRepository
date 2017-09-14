@isTest
 
  /**
 * @Name: AccountAndIdMapingTest
 * @Description: test class for AccountAndIdMaping.
 * @Author: Kanika Gurditta
 **/
 
 public with sharing class AccountAndIdMapingTest {
    
   /**
     * @Description: creating map of account and id when account record exist.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/ 
   
   public static testmethod void accountrecordexistcase() {
   
        //creating Account records
        
        Account acc = new Account();
        acc.Name='Test';
        insert acc;
        
        List<Account>listaccount =[select name ,id from Account];
        Map<String ,Id> mapAccount = new Map<String,Id>();
        
        for(Account a: listaccount) {
        
          MapAccount.put(a.name ,a.id);
        }//end for loop
        
        test.startTest();
        
        AccountAndIdMaping CR = new AccountAndIdMaping();
        CR.accountidmapping();
        
        test.stopTest();
        
        System.assertEquals(mapAccount.size(),CR.mapAccountId.size());
    }// end AccountRecordCreation
    
    /**
     * @Description: creating map of account and id when account record does not exist.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
    
    public static testmethod void noaccountrecordexistcase() {
      
      //listaccount is empty in case because there is no account record.
      
      List<Account>listaccount =[select name ,id from Account];
      Map<String ,Id> mapAccount = new Map<String,Id>();
      
      for(Account a: listaccount) {
      
        MapAccount.put(a.name ,a.id);
        
      }//end for loop
        
      test.startTest();
        
      AccountAndIdMaping CR = new AccountAndIdMaping();
      CR.accountidmapping();
        
      test.stopTest();
        
      System.assertEquals(0,mapAccount.size());
      
   }//end noaccountrecordexistcase
    
 }//end AccountAndIdMapingTest