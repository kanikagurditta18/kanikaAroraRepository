/**
 * @Name: AccountRelatedContactPrinter
 * @Description: It will print all the contact related to account
 * @Author: Kanika Gurditta
 **/

 public class leadSourceCountByStatusById {
 
    @TestVisible public String lead1 = 'web';
    @TestVisible public String lead2 = 'Phone Inquiry';
    @TestVisible public String Status1 = 'Closed - Converted';
    @TestVisible public List<AggregateResult> listlead;
    @TestVisible public Map<String,Integer> maplead;
    /**
     * @Description: Print all the active users.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/   
 
    public void leadsourcecount() {
    
      //count of records will bw added to the list of leads
      listlead =[SELECT COUNT(name) FROM Lead  where leadsource = 'web' and Status ='Closed - Converted' Group by id];
      //List<AggregateResult> list2 =[SELECT  COUNT(leadSource) FROM Lead  where leadsource =: lead2];
      //List<AggregateResult> list1 =[SELECT  COUNT(leadSource) FROM Lead  where leadsource =: lead1];
      System.debug(listlead);
      //System.debug(list2);
      Map<String,Integer> maplead = new Map<String,Integer>();
      Map<string ,Map<String,Integer>> mapofleads = new Map<String , Map<String,Integer>>();
      
      for(AggregateResult app : listlead) {
      
        maplead.put(lead1 ,(Integer)listlead[0].get('expr0'));
        system.debug(maplead);
        mapofleads.put(status1 , maplead);
        System.debug(mapofleads);

      }//end for loop

    }//end leadsourcecount
    
 }//end leadSourceCountByStatusById