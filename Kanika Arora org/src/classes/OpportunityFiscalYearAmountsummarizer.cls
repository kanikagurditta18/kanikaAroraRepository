/**
 * @Name: OpportunityFiscalYearAmountsummarizer 
 * @Description: It will insert the lead records ,if insertion fails then reason should be displayed in lof object's error field .
 * @Author: Kanika Gurditta
 **/
 public class OpportunityFiscalYearAmountsummarizer {
   @TestVisible public List<AggregateResult> listopp;
   @TestVisible public Integer year_today = Date.today().year();
   
   /**
     * @Description: It will print the fiscal year records  .
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
   **/ 
   
   public void printingfiscalyearrecords() {
       
     listopp =[select id, SUM(Amount)  from Opportunity  where Fiscal_Year(createdDate) =: year_today group by id ];
     System.debug(listopp);
     Map<Integer ,Object> map1 = new Map<Integer ,Object>();
     
     for(AggregateResult opp :listopp) {

        map1.put(year_today ,listopp[0].get('expr0'));
        System.debug(map1);
     }//end for loop
   }//end printingfiscalyearrecords
 }//end OpportunityFiscalYearAmountsummarizer