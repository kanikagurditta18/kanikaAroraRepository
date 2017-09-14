/**
 * @Name: StringReverser
 * @Description: Takes a string as parameter and do its functionality accordingly.
 * @Author: Kanika Gurditta
 **/

 public with sharing class StringManipulator{
 
  // @TestVisible public String str5;
   @TestVisible public String replacedstring;
   @TestVisible public String trimmedstring;
   @TestVisible public String[] splitedstring;
   @TestVisible public String uppercaseconvertedstring;
   @TestVisible public String lowercasestring;
   
    /**
     * @Description: prints the reverse of a string.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Param: 1. poriginalstring: it is the string that is used for multiple functions.
     * @Return: void
     **/
     
    public void printstring(String poriginalstring) {
    System.debug(poriginalstring);
    
    //replacing @ in the poriginalstring  with A 
    
     replacedstring = poriginalstring.replace('@' , 'A');
     System.debug(replacedstring);
     
     //getting substring of poriginalstring in trimmedstring  
     
     String trimmedstring = replacedstring.substring(11);
     System.debug(trimmedstring);
        
     //spliting the poriginalstring from the blank space by using split method
        
     String[] splitStr = poriginalstring.split(' ');
     System.debug(splitedstring[0]);
     System.debug(splitedstring[1]);
        
     //converting replacedstring to uppercase
        
     String uppercaseconvertedstring  = replacedstring.toUpperCase();
     System.debug(uppercaseconvertedstring);
        
     //converting uppercaseconvertedstring to lowercase  
        
     String lowercasestring =uppercaseconvertedstring.toLowerCase();
     System.debug(lowercasestring);
        
     //str5 = str4.replaceAll('\\s','');
     //System.debug(str5);
    }
}