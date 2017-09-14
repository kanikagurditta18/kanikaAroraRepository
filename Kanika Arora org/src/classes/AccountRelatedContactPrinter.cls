/**
 * @Name: AccountRelatedContactPrinter
 * @Description: It will print all the contact related to account
 * @Author: Kanika Gurditta
 **/
 
 public class AccountRelatedContactPrinter {
 
   //list for storing contact related to account
    
   @TestVisible public list<contact>contactlist;
   
    /**
     * @Description: Print all the contact related to account.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/   
      
   public void printaccountcontactrecords() {
   
   String finalQuery = 'Select Id,Name from Account ';

   List<Account> aList = Database.Query(finalQuery);
   
   contactlist = [Select Id,FirstName,LastName,AccountId from Contact where AccountId IN: aList];
   
   
   for(Contact con : contactlist){
   
     System.debug(con.Id);
     System.debug(con.FirstName);
     
    }//end for loop
    
   }//end printaccountcontactrecords
   
 }//end AccountRelatedContactPrinter