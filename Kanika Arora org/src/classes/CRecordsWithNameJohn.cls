public class CRecordsWithNameJohn {

 public List<C__c> list1{get;set;}
 public  void getrecordsofC() {
list1 =([Select Name, A__r.phone__c, B__r.Description__c from C__c]);
System.debug(list1);
}
 public List<Account> list2{get; set;}
String Name1 ='john';
public void getcontactrecords() {

string query =  'select id, name, (select id, name from Contacts) from account where Name=:Name1';
list2 = Database.query(query);
system.debug(list2);
} }