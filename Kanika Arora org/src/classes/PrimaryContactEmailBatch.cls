global class PrimaryContactEmailBatch implements Database.Batchable<sObject> {
 public  string email;
     global Database.QueryLocator start(Database.BatchableContext BC) {
         String prim ='primary';
       String strQuery = 'select AccountId,  Email, FirstName from  Contact  where Level__c =:prim';
                return Database.getQueryLocator(strQuery);
     }
    
//global  list<Opportunity>listopp =[select Name,Amount, AccountId, id from Opportunity where StageName = 'Closed Won' And Name ='ekta' ];
//Opportunity opp = [select Name,Amount, AccountId, id from Opportunity where StageName = 'Closed Won'And Name ='Ekta' ];
     
     global  void execute(Database.BatchableContext bc, List<Contact> lst){
  
         Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

                mail.setToAddresses(new String[] {email});
                mail.setReplyTo('kanika.gurditta@eternussolutions.com');
                mail.setSenderDisplayName('Batch Processing');
                mail.setSubject('Batch Process Completed');
                mail.setPlainTextBody('Batch Process has completed');
                
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                      } 

     global void finish(Database.BatchableContext BC){
     System.debug(BC);
     }
}