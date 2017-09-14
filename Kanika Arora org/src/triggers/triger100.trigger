trigger triger100 on Contact (before insert) {
    
List<contact> list1 =[select phone , email from contact];
    for(contact a:trigger.new) {
        
    for( contact c1 : list1)
          
     {
       if(c1.phone == a.phone && c1.email == a.email)
          {
                 a.adderror('This email already exists');
          }
     }
}
}