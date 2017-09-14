trigger EmployeeTrigger on employee__c (before insert, before update) 
{
    if(trigger.isInsert)
    {
        for(employee__c e : trigger.new)
        {
            if(e.name__c != e.email__c)
            {
                e.addError('Username and Email should be same');
            }           
        }
    }
    else if(trigger.isUpdate)
    {    
        for(employee__c o : trigger.old)
        {
            for(employee__c n : trigger.new)
            {
                if(o.email__c != n.email__c)
                {
                    n.addError('Email address cannot be changed');
                }   
            } 
        } 
    }
}