public class parentChild {
List<A__c> list1 ;
String Name1 ='john' ;
public void method1() {
String query =' select phone__c ,Email__c , (select  name, B__c.Description from C__r where Name =:Name1) from A__c ' ;
list1 = Database.query(query);
System.debug(list1);
}

}