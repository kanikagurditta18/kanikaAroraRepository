public class AllcontactRecords {
     public List<Contact>conlist;
    public void allrecordsget() {
  conList = [Select Id,FirstName,LastName,AccountId from contact];
 System.debug(conList);
}
    
        
}