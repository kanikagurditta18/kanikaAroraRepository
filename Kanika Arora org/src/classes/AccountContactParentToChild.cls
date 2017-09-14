public class AccountContactParentToChild {

 public List<Account> listAccount ;
public String Name1 ='john';
public void accountrecordget() {

string query =  'select id, name, (select id, name from Contacts) from account where Name=:Name1';
listAccount = Database.query(query);
system.debug(listAccount);
} }