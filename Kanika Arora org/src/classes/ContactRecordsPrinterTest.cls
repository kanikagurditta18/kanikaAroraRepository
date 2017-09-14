@isTest
 
 /**
 * @Name: ContactRecordsPrinterTest 
 * @Description: Test the functionality of ContactRecordsPrinterTest .
 * @Author: Kanika Gurditta
 **/   
  
 public with sharing class ContactRecordsPrinterTest {
    
    /**
     * @Description: creation of single contact records
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
 
    public static testmethod void contactRecordCreation() {
       
        //creating Account records
     
        Account accounts = new Account();
        accounts.Name='Test';
        insert accounts;
        
        //creating contact records
        
        Contact contacts = new Contact();
        contacts.FirstName = 'Kamya';
        contacts.LastName = 'Tyagi';
        contacts.Email ='kamyatyagi1218@espl.com';
        contacts.Accountid = accounts.id;
        insert contacts;
        
        test.startTest();
        
        //taking instance of class contactRecords 
        
        ContactRecordsPrinter CR = new ContactRecordsPrinter();
        
        //listcontact containing all the contact
        
        list<contact>listcontact = [select FirstName , LastName ,id,Email,AccountId from contact];
        //calling method of the ContactRecordsPrinter 
        CR.printcontactrecords();
        
        test.stopTest();
        
        System.assertEquals(listcontact.size(),CR.contactlist.size());
     }//end contactRecordCreation
     
   
    /**
     * @Description: creation of  bulk records of contact
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/

    public Static testmethod void bulkrecordsInsertion() {
    
      //list of Account for storing Account Records
    
      list<Account>listaccount =new list<Account>();
       
       //creating 200 Account records
       
        for(Integer recordcounter =0 ; recordcounter<=200 ; recordcounter++) {
          
            //creating Account records
            
            Account accounts = new Account();
            accounts.Name ='test' +recordcounter;
            listaccount.add(accounts);
            
        }//end for loop
        
       insert listaccount;
        
         //list of contact for storing contact records
        
       list<contact>listcontact = new list<contact>();
         
       //creating 200 contact records
         
        for(Integer count_contact =0 ;count_contact<=200 ; count_contact++) {
       
           Contact contacts = new Contact();
           contacts.FirstName ='test'+count_contact;
           contacts.LastName = 'test'+count_contact;
           contacts.Email = 'test'+count_contact +'@email.com' ;
           
           System.debug(contacts.Email);
           
           contacts.AccountId = listaccount[count_contact].id;
           
           system.debug(contacts.AccountId+'***********'+listaccount[count_contact].id);
           
           listcontact.add(contacts);
           
           system.debug('********'+listaccount);

        }//end for loop
        
         insert listcontact;
         
         test.startTest();
         
         //creating instance of class ContactRecordsPrinter
         ContactRecordsPrinter cr = new ContactRecordsPrinter();
         
         cr.printcontactrecords();
         list<Contact>listcontacts =  [select id , FirstName , LastName , AccountId from contact];
         
         test.stopTest();
         
         System.assertEquals(listcontacts.size(),CR.contactlist.size());
     }//end bulkrecordcreation
    
    /**
     * @Description: case when their is no contact records
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/ 
      
    public Static testmethod void nocontactrecordcase() {
    
    //creating Account record
    
     Account acc = new Account();
     acc.Name = 'test';
     insert acc;
    
    /*contact c = new contact();
        c.FirstName = 'Kamya';
        c.LastName = 'Tyagi';
        c.Email ='kamyatyagi1218@espl.com';
        insert c;*/
        
      test.startTest();
        
      ContactRecordsPrinter CR = new ContactRecordsPrinter();
      list<contact>listcontacts = [select FirstName , LastName ,id,Email,AccountId from contact];
      CR.printcontactrecords();
      
      test.stopTest();
      
      System.assertEquals(0,listcontacts.size());  
    
    }//end nocontactrecordcase
 }//end ContactRecordsPrinterTest