public with sharing class leadRecords100 {
  public void method1() {
Lead myLead      = new Lead();
myLead.FirstName = 'David';
myLead.LastName  = 'Liu';
myLead.Company   = 'Unemployed';
insert myLead;
        
        
  }
}