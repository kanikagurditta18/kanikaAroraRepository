public class MediaAllActiveContact {
 
 public String industry1 = 'media';
    public  List<Account> lst_acc;
    
    public void recordsget(){
     
string query ='select id, name, (select id, name from Contacts) from account where Industry =: industry1';
        lst_acc = Database.query(query);
        system.debug(lst_acc);

 
 }

}