trigger DepartmentTrigger on department__c (after update,after delete,after undelete ) 
{
   if(trigger.IsUpdate) {
    for(department__c dept : trigger.new){
        dept.Description__c = 'new description';
        System.debug('======='+dept.Description__c);
    }
   }
   else if(trigger.Isdelete) {
    for(department__c dept :trigger.Old) {
        System.debug('*****'+dept.Description__c);
    }
   }
}