/**
 * @Name: CharacterOccurenceCounter 
 * @Description: Takes a string as parameter and prints the occurence of every character accordingly.
 * @Author: Kanika Gurditta
 **/

 public with sharing class CharacterOccurenceCounter {
 
    @TestVisible public Map<String ,Integer>Mapcharactercounter =new Map<String,Integer>();
    @TestVisible private String charat;
 
   /**
     * @Description: print the occurence of each character in poriginalstring.
     * @Author: Kanika Gurditta
     * @Param: 1. poriginalstring: this string is passed as parameter for which occurence of character is calculated.
     * @Date: 10-08-2017
     * @Return: void
     **/
 
    public void printcharacteroccurence(String poriginalstring) {
    
      // Iteration for going upto the length of poriginalstring and prints the occurence of characterin a poriginalstring.
      for(Integer Iterator=0 ; Iterator<poriginalstring.length() ; Iterator++) {
      
        charat = poriginalstring.substring(Iterator,Iterator+1);
        
        if(!Mapcharactercounter.containskey(charat)) {
        
        Mapcharactercounter.put(charat ,1);
        }//end if
        
        else {
          Mapcharactercounter.put(charat ,Mapcharactercounter.get(charat) + 1);
        }//end else
        
      }//end for loop
      system.debug(Mapcharactercounter);
    }//end printcharacteroccurence
  }//end CharacterOccurenceCounter