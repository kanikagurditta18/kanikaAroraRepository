global class LeadDuplicateRecords Implements Schedulable {
  
    global void execute(SchedulableContext sc) {
        list<lead>scope =[select id,Email , Name from Lead ORDER BY CreatedDate];
        System.debug(scope);
        Set<string>listlead = new Set<string>();
         list<lead>duplist = new list<lead>();
        for(lead le:scope) {
            if(listlead.add(le.email)) {
                listlead.add(le.email);
                System.debug(listlead);
            }
            else {
                 duplist.add(le);
            }
        }
        System.debug(duplist);
       delete duplist; 
    }
    
}