@isTest
 
 /**
 * @Name: ActiveUserPrinterTest
 * @Description: test class for ActiveUserPrinter.
 * @Author: Kanika Gurditta
 **/

 public with sharing class  ActiveUserPrinterTest {
 
    /**
     * @Description: creating a user 
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
     
    public static testmethod void usercreation() {
    
      list<User>listusers = new list<User>();
      User users = new User();
      users.LastName ='User';
      users.Email = 'Test1233@gmail.com';
      users.Alias='testd12';
      users.IsActive = true;
      users.Username = 'testuser18242@sepl.com';
      users.CommunityNickname='usertest';
      users.TimeZoneSidKey = '(GMT-07:00) Pacific Daylight Time (America/Los_Angeles)';
      users.LocaleSidKey = 'English (United States)';
      users.LanguageLocaleKey= 'LanguageLocaleKey' ;
      users.EmailEncodingKey= 'General US & Western Europe (ISO-8859-1, ISO-LATIN-1)';
     // users.Profile= System Administrator;
     // users.UserRole= 'Manager';
     
     listusers.add(users);
     insert(listusers);
     list<User> listofusers =[Select Id , Name ,IsActive from User where IsActive = true]; 
     
     test.starttest();
     
     ActiveUserPrinter er = new ActiveUserPrinter();
     er.printactiveusers();
     
     test.stoptest();
     
     System.assertEquals(listofusers.size() , er.UserList.size());
     
    }
   /* public static testmethod void bulktest() {
    list<employee__c>listemp = new list<employee__c>();
    for(Integer i = 0 ; i<=200 ; i++) {
    employee__c employe = new employee__c();
     employe.Address__c ='Test Address'+i;
     employe.Name__c = 'Test'+i+'@gmail.com';
     employe.Email__c ='Test'+i+'@gmail.com';
     employe.Is_Active__c = true;
     employe.Date_of_Birth__c = Date.newInstance(2016, 12, 9);
     employe.Last_Name__c ='user';
     employe.Name ='user'+i;
     employe.Date_of_Joining__c= Date.newInstance(2016, 12, 8);
     employe.Resignation_date__c = Date.newInstance(2017, 12, 9);
     employe.SSN__c = 125231242;
     listemp.add(employe);
     }
     insert listemp;
    list<employee__c> listem =[select id ,Address__c ,Name__c ,Is_Active__c from employee__c where Is_Active__c = true];
     test.starttest();
     EmployeeActiveRecords er = new EmployeeActiveRecords();
     er.method1();
     test.stoptest();
     System.assertEquals(listem.size() , er.conList.size());
    
      }
      public static testmethod void  negativeCase() {
        list<employee__c>listem = new list<employee__c>();
     employee__c employe = new employee__c();
     employe.Address__c ='Test Address';
     employe.Name__c = 'Test@gmail.com';
     employe.Email__c ='Test@gmail.com';
     employe.Is_Active__c = false;
     employe.Date_of_Birth__c = Date.newInstance(2016, 12, 9);
     employe.Last_Name__c ='user';
     employe.Date_of_Joining__c= Date.newInstance(2016, 12, 8);
     employe.Resignation_date__c = Date.newInstance(2017, 12, 9);
     employe.Name ='test@gmail.com';
     listem.add(employe);
     insert(listem);
     list<employee__c> listemp =[select id ,Address__c ,Name__c ,Is_Active__c from employee__c where Is_Active__c = true];
     test.starttest();
     EmployeeActiveRecords er = new EmployeeActiveRecords();
     er.method1();
     test.stoptest();
     System.assertEquals(listemp.size() , er.conList.size());
     
      
      } */
}