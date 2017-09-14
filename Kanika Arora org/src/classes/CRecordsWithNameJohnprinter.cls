/**
 * @Name: CRecordsWithNameJohnprinter 
 * @Description: It will print the records of C object and contact with name john
 * @Author: Kanika Gurditta
 **/

 public class CRecordsWithNameJohnprinter {

   @TestVisible public List<C__c> listofCrecords;
   @TestVisible public List<Account> listaccount;
   @TestVisible public String Name1 ='john';
    /**
     * @Description: print the records of c with name john
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/ 
   
    public  void printrecordsofC() {
   
    listofCrecords = [Select Name, A__r.phone__c, B__r.Description__c from C__c];
    
    System.debug(listofCrecords);
   
    }//end printrecordsofC
    
    
    /**
     * @Description: print records of contact with name john
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/ 
    
    public void printcontactrecords() {

    String query =  'select id, name, (select id, name from Contacts) from account where Name=:Name1';
    listaccount = Database.query(query);
    System.debug(listaccount);
     
     }//end printcontactrecords
  
 }//end CRecordsWithNameJohnprinter