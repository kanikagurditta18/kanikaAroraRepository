public class OpportunityFiscalYear {
public List<AggregateResult> list1;
public Integer date1 = Date.today().year();
public void fiscal_year() {
 
 list1 =[select id, SUM(Amount)  from Opportunity  where Fiscal_Year(createdDate) =: date1 group by id ];
System.debug(list1);
Map<Integer ,Object> map1 = new Map<Integer ,Object>();
for(AggregateResult opp :list1)
{
map1.put(date1 ,list1[0].get('expr0'));
System.debug(map1);
}
}
}