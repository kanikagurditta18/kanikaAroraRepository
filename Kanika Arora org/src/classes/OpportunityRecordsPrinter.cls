/**
 * @Name: OpportunityRecordsPrinter 
 * @Description: it will print the opportunity records having amount greater than 10000  
 * @Author: Kanika Gurditta
 **/
 
 public class OpportunityRecordsPrinter {
 
   @TestVisible public List<Opportunity> listOpp;
   
   /**
     * @Description: It will print the opportunity records with amount greater than 10000.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/   

   public void printOpportunityrecords() {
   
   listOpp = [SELECT Name from Opportunity  where Amount > 10000 OR IsDeleted = true  OFFSET 30];
   System.debug(listOpp);
   
   }//end printOpportunityrecords
   
/*public void method2() {
List<Opportunity> list1 = [SELECT name from Opportunity where IsDeleted = true ALL ROWS];
System.debug(list1);
}*/
 }//end OpportunityRecordsPrinter