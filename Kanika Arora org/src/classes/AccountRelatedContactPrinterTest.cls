@isTest
 
 /**
 * @Name: ContactRecordsPrinter 
 * @Description: test class for AccountRelatedContactPrinter.
 * @Author: Kanika Gurditta
 **/
 
 public with sharing class AccountRelatedContactPrinterTest {
 
    /**
     * @Description: creating account and contact single record
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
 
    public static testmethod void recordscreation(){
      
        //creating Account records
        Account accounts = new Account();
        accounts.Name = 'test';
        insert accounts;
        
        //creating contact records
        
        Contact contacts = new contact();
        contacts.FirstName = 'test1';
        contacts.LastName ='test2';
        contacts.AccountId = accounts.id ;
        contacts.Email ='abc@test.com';
        insert contacts;
        
        test.starttest();
        
        //creating instance of class ContactRecordsPrinter
        
        AccountRelatedContactPrinter ac = new AccountRelatedContactPrinter();
        ac.printaccountcontactrecords();
        
        list<Account>listacc = [select id,name from Account];
        list<contact>listcontact =[select id ,FirstName , LastName , AccountId from Contact where AccountId IN: listacc];
        
        test.stopTest();
        
        system.assertequals(listcontact.size() ,ac.contactlist.size());
    }//end recordscreation
    
    /**
     * @Description: creating account and contact bulk record for bulk records
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
 
    public static testmethod void accountcontactRecordsbulkTest() {
    
       //listaccount for storing account records
       
       list<Account>listaccount =new list<Account>();
       
        //creating 20 account records
        
        for(Integer recordcounter =0 ; recordcounter<=20 ; recordcounter++) {
        
          Account accounts = new Account();
          accounts.Name ='test' +recordcounter;
          listaccount.add(accounts);
          
        }//end for loop
        
        insert listaccount;
        
        list<contact>listcontact = new list<contact>();
        list<Account> listacount = [select id from Account where name like '%test%'];
        /*r(Integer count_account =0;count_account<=20;count_account++) {
            Account acount = listaccount[count_account];*/
        
        //creating 20 contact records
            
        for(Integer count_contact =0 ;count_contact<=20 ; count_contact++) {
            
            Contact contact = new Contact();
            contact.FirstName ='test'+count_contact;
            contact.LastName = 'test'+count_contact;
            contact.Email = 'test'+count_contact +'@email.com' ;
            
            System.debug(contact.Email);
            
            contact.AccountId = listacount[count_contact].id;
            
            system.debug(contact.AccountId+'***********'+listacount[count_contact].id);
            
            listcontact.add(contact);
            
            system.debug(listcontact+'********'+listacount);

        }//end for loop
        
         insert listcontact;
         
         test.startTest();
         
         AccountRelatedContactPrinter ac = new AccountRelatedContactPrinter();
         ac.printaccountcontactrecords();
         list<Contact>listcnt =  [select id , FirstName , LastName , AccountId from contact where AccountId IN: listaccount];
         
         test.stopTest();
         
         System.assertequals(listcnt.size(),ac.contactlist.size());
    }//end accountcontactRecordsbulkTest
    
    /**
     * @Description: contact records creation without accountid 
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
    
    Public static testmethod void recordcreationwithoutaccountid() {
    
       //creating accounts records and storing in listaccount
    
        list<Account>listaccount =new list<Account>();
        Account accounts = new Account();
        accounts.name = 'kanika';
        listaccount.add(accounts);
        insert listaccount;
        
        //creating contact records
        
        Contact con = new Contact();
        con.LastName ='kamolika';
        insert con ;
        
        test.startTest();
        
        AccountRelatedContactPrinter  ac = new AccountRelatedContactPrinter();
        ac.printaccountcontactrecords();
        list<Contact>listcnt =  [select id , LastName ,AccountId from contact where AccountId IN: listaccount];
        
        test.stopTest();
        
        System.assertequals(listcnt.size(),ac.contactlist.size());
        
    }//end recordcreationwithoutaccountid
    
  }//end  AccountRelatedContactPrinterTest