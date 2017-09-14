/**
 * @Name: ContactRecordsPrinter 
 * @Description: it will print all the contact records.
 * @Author: Kanika Gurditta
 **/
 
 public class ContactRecordsPrinter {
 
    //list in which contact will be stored
    @TestVisible public List<Contact>Contactlist;
    
     /**
     * @Description: Prints all the contact records.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
    
    public void printcontactrecords() {
    
      ContactList = [Select Id,FirstName,LastName,AccountId from contact];
      System.debug(ContactList);
    
    }//end printcontactrecords
    
  }//end ContactRecordsPrinter