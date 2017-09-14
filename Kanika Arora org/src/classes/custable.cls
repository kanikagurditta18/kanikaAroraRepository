public with sharing class custable {

     public string recid{get;set;}
       public string row{ get; set;}
       public list<Account> Acclst{get;set;}
       Public Account A;



       public custable(){

       Acclst = [select Id,Name from Account ];

}
       public pagereference deleteAccount()
       {
       account ac=[select id,name from account where id=:recid];
       delete ac;


       pagereference ref =new pagereference('/apex/custable');
       ref.setredirect(true);
       return ref;

}
}