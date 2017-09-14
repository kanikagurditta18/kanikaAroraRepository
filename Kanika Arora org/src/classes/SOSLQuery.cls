/**
 * @Name: SOSLQuery 
 * @Description: It will check the value test in object such as Account , Contact , User , lead
 * @Author: Kanika Gurditta
 **/
 
 public with sharing class SOSLQuery {
 
   @TestVisible public List<List<sObject>> searchList;
    
     /**
     * @Description: find the value test in the object.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/ 
     
    public void findingvariableinmultipleobject() {
    
      searchList = [FIND 'test' IN ALL FIELDS 
                   RETURNING Account(Name),Contact(FirstName,LastName) , User(FirstName , LastName),Lead(FirstName , LastName)];
                   
      Account[] searchAccounts = (Account[])searchList[0];

      Contact[] searchContacts = (Contact[])searchList[1];

      User[] searchUser = (User[])searchList[2];
      
      Lead[] searchLead = (Lead[])searchList[3];
      
      System.debug('Found the following accounts.');

      for (Account a : searchAccounts) {

        System.debug(a.Name);

      }//enf for loop

 
     System.debug('Found the following contacts.');

     for (Contact c : searchContacts) {

       System.debug(c.LastName + ', ' + c.FirstName);

     }//end of for loop

 
     System.debug('Found the following User.');

     for (User c : searchUser) {

       System.debug(c.LastName + ', ' + c.FirstName);

     }//end of for loop

     System.debug('Found the following Lead.');

     for (Lead c : searchLead) {

       System.debug(c.LastName + ', ' + c.FirstName);

     }//end for loop

   }//end findingvariableinmultipleobject
}//end SOSLQuery