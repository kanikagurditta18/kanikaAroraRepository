global class LeadCreation { 
  webservice static Id leadcreator(String LastName,String Company, Lead a){ 
    Lead c= new Lead(LastName = 'Weissman none' , Id = a.Id , Company = 'espl'); 
    insert c; 
    return c.id; 
  } 
}