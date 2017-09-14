trigger CaseTrigger on Case (after insert) {
 
    set<id> sid = new set<id>();
 
    for( Case A :trigger.new){
 
        sid.add(A.Id);
 
        system.debug('sid :'+sid);
        
        Case cc = trigger.newMap.get(A.Id);
 
        system.debug('cc :'+cc);
 
    }
 
}