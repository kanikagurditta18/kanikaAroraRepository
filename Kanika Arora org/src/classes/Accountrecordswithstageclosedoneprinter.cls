/**
 * @Name: Accountrecordswithopportunityclosedoneprinter
 * @Description: print all the records of accounts having atleast one opportunity with stage closed won
 * @Author: Kanika Gurditta
 **/
 
 public class Accountrecordswithstageclosedoneprinter{
  
    @TestVisible public list<Account> listacc;
     /**
     * @Description: print all account records with having opportunity stage closed won
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/ 
   
   public void printopportunityrecords(){
   
     listacc = [SELECT Name,(Select StageName from Opportunities where StageName ='Closed Won') from Account where id IN (Select AccountId from opportunity where StageName ='Closed Won')];
   
     for(Account acc : listacc) {
   
       System.debug(acc);
   
      }//end for loop
      
    }//end printopportunityrecords
   public void printrecordsofA() {
     List<A__c> listA = [select Name,(select Name from Cs__r)from A__c where id In(select A__c from C__c where name ='john')];
     for(A__c ac:listA)
       system.debug(ac);
      }//end for loop
      
    }//end printrecordsofA