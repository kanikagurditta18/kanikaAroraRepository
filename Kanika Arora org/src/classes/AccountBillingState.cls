/**
 * @Name: RecordsInsertion 
 * @Description: it will create the record in respective objects
 * @Author: Kanika Gurditta
 **/
 
 public class AccountBillingState {

   @TestVisible public List<Account> listaccount;
   @TestVisible public list<Account> listaccountstate;
   
    /**
     * @Description: it will print those records which does not contain billing state as Maharashtra or kerela
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/  
   
   public void printaccountrecords() {
   
     //listaccount will store those accounts whose billingstate is maharashtra or kerela
     
     listaccount =[SELECT Name from Account where BillingState = 'Maharashtra' OR BillingState = 'kerela'];
     System.debug(listaccount);
   
     //listaccountstate will store those accounts whose billing is not maharashta or kerela
     
     listaccountstate = [SELECT AccountNumber from Account where not( Id IN: listaccount) ORDER BY BillingState desc LIMIT 10000];
     System.debug(listaccountstate);
     
   }//end printaccountrecords
   
 }//end AccountBillingState