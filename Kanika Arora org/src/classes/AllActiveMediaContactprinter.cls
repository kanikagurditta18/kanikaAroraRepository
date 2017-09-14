/**
 * @Name: AllActiveMediaContact 
 * @Description: it will print all active media contact
 * @Author: Kanika Gurditta
 **/

 public class AllActiveMediaContactprinter {
 
    @TestVisible public String industry1 = 'media';
    @TestVisible public List<Account> listaccount;
    
     /**
     * @Description:print all the active contacts belongs to media industry .
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/  
    
    public void printallactivecontact(){
    
    String querystring ='select id, name, (select id, name from Contacts) from account where Industry =: industry1';
    listaccount = Database.query(querystring);
        system.debug(listaccount);

     }//end printallactivecontact

 }//end AllActiveMediaContactprinter