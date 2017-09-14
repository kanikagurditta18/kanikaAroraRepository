public class leadSourceCount2 {
public void method1() {
String lead1 = 'web';
String lead2 = 'Phone Inquiry';
String Status1 = 'Closed - Converted';
List<AggregateResult> list1 =[SELECT COUNT(name) FROM Lead  where leadsource = 'web' and Status ='Closed - Converted' Group by id];
//List<AggregateResult> list2 =[SELECT  COUNT(leadSource) FROM Lead  where leadsource =: lead2];
//List<AggregateResult> list1 =[SELECT  COUNT(leadSource) FROM Lead  where leadsource =: lead1];
System.debug(list1);
//System.debug(list2);
Map<String,Integer> map1 = new Map<String,Integer>();
Map<string ,Map<String,Integer>> map2 = new Map<String , Map<String,Integer>>();
for(AggregateResult app : list1)
{

map1.put(lead1 ,(Integer)list1[0].get('expr0'));
system.debug(map1);
map2.put(status1 , map1);
System.debug(map2);

}

}
}