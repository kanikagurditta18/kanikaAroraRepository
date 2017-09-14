trigger ContactTriggerAfterInsert on Contact (after insert) {
 
    set<id> sid = new set<id>();
 
    for( Contact A :trigger.new){
 
        sid.add(A.Id);
 
        system.debug('sid :'+sid);
        
        Contact cc = trigger.newMap.get(A.Id);
 
        system.debug('cc :'+cc);
 
    }
    
    }