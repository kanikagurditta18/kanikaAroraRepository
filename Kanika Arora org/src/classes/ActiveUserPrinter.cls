/**
 * @Name: AccountRelatedContactPrinter
 * @Description: It will print all the contact related to account
 * @Author: Kanika Gurditta
 **/
 
 public class ActiveUserPrinter {
 
   @TestVisible public List<User> UserList;
   @TestVisible public Map<Id , Boolean> usermap= new Map<Id , Boolean>();
   
    /**
     * @Description: Print all the active users.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/   
   
   public void printactiveusers() {
   
     //getting details of active users in userlist
    
     UserList = [Select Id , Name ,IsActive from User where IsActive = true]; 
   
     for(User users : UserList) {
    
       usermap.put(users.Id ,users.IsActive);
     }//end for loop
     
     System.debug(usermap);
     System.debug(UserList);
   
   }//end printactiveusers
 }//end ActiveUserPrinter