public class Parentchid {
List<C__c> list1 ;
String name1 = 'john' ;
 public  void method1() {
     String query = 'SELECT Phone__c(SELECT Name__c from C__r where C__r.Name =: name1 ORDER BY CreatedDate DESC LIMIT 1 ) from A__c';
     list1 = Database.query(query);
System.debug(list1);
} }