public class pc {
String name1 ='john' ;
List<A__c> list1 ;
public void method1() {
 String query =' SELECT Phone__c,(SELECT Name__c  from Cs__r ) from A__c where C__rName__c =:name1 ';
list1 = Database.query(query);
System.debug(list1);
}

}