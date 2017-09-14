public class AccountRecords {
    public List<Account> accList{get; set;}
    public List<Contact> conList{get; set;}
    public void method1() {
   String finalQuery = 'Select Id,Name from Account limit 10';

    accList = Database.Query(finalQuery);
    conList = [Select Id,FirstName,LastName,AccountId from Contact where AccountId IN: accList];
   for(Contact con : conList){
    System.debug(con.Id);
    System.debug(con.FirstName);
}
    
        
}
}