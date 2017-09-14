public class dynamicApex5 {

    public String orderselect { get; set; }

    public String limitselect { get; set; }

   public void execute() {
       querystr = 'Select'+'fields'+'from'+'objectName'+ 'LIMIT'+'limitselect' + 'ORDER BY'+'orderselect';
       Database.Query(querystr);
    }

public String querystr {get; set;}


   
   // public String chooselimit { get; set; }

   public list<SelectOption> selectedobject { get; set; }

    public String objectName { get; set; }    
    public set<string> flds{get;set;}
    
    Map<String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
    public dynamicApex5(){
                   
                selectedobject = new list<SelectOption>();  
                  selectedobject.add(new selectoption('','-None-'));
                  list<schema.SobjectType> lst=schemaMap.values();
                  for(schema.SobjectType ss:lst){
                       if(ss.getDescribe().isQueryable()) {
                       
                      selectedobject.add(new selectoption(ss.getDescribe().getLocalName(),ss.getDescribe().getLabel()));
                      }
                      selectedobject.sort();
               }
                 flds= new set<string>();
                  lsps=new list<SelectOption>();
    }
 
      
      public String fields { get; set; }
      
       public list<SelectOption> lsps{get;set;}
      
       public void function() {
       
         if(objectName!=null || objectName!=''){
           Map<string,Schema.SObjectField> mpConField=schemaMap.get(objectName).getDescribe().fields.getMap();
               flds=mpConField.keySet();
                                
                   for(string name:flds){
                   Schema.DescribeFieldResult fldResult=mpConField.get(name).getDescribe();
                    lsps.add(new SelectOption(fldResult.getName(),fldResult.getName()));
                    lsps.sort();                    
                   }
                }        
    }
    
         public List<SelectOption>getchooselimit()
   {
       List<SelectOption> options = new List<SelectOption>();
       options.add(new Selectoption('100','100'));
       options.add(new Selectoption('1000','1000'));  
       options.add(new Selectoption('5000','5000')); 
       options.add(new Selectoption('50000','50000'));      
       return options;
   }
   
    public List<SelectOption>getchooseorder()
    {
       List<SelectOption> options = new List<SelectOption>();
       options.add(new Selectoption('ASC','Ascending'));
       options.add(new Selectoption('DESC','Descending '));
       return options;
   }

}