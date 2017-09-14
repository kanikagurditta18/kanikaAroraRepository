/**
 * @Name: leadsfromdifferentLeadSourceCounter 
 * @Description: it will calculate the number of leads having leadsource equals to 'web' .
 * @Author: Kanika Gurditta
 **/
 public class leadsfromdifferentLeadSourceCounter {
     
    @TestVisible public String leadsourcefirst = 'web';
    @TestVisible public List<AggregateResult> listleadfromweb;
    @TestVisible public List<AggregateResult> listleadfromphone;
    @TestVisible public String leadsourcesecond = 'Phone Inquiry';
    
     /**
     * @Description: gives the count of leads generated through web and through phone
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
   **/ 
    
    public void printleadcount() {

       listleadfromweb =[SELECT  COUNT(leadSource) FROM Lead  where leadsource =: leadsourcefirst];
       listleadfromphone =[SELECT  COUNT(leadSource) FROM Lead  where leadsource =: leadsourcesecond];
       //List<AggregateResult> list1 =[SELECT  COUNT(leadSource) FROM Lead  where leadsource =: lead1];
       System.debug(listleadfromweb);
       System.debug(listleadfromphone);
       
       Map<String ,object> maplead = new Map<String ,object>();
       
       for(AggregateResult ap :listleadfromweb ) {
           
       maplead.put(leadsourcefirst,listleadfromweb[0].get('expr0'));
       system.debug(maplead);
       maplead.put(leadsourcesecond,listleadfromphone[0].get('expr0'));
       system.debug(maplead);
       
       }//end of for loop
     }//end printleadcount
 }//end leadsfromdifferentLeadSourceCounter