@isTest  

 /**
 * @Name: StringReverser
 * @Description: It is used the tset the stringPrinter class.
 * @Author: Kanika Gurditta
 **/
  
 public class StringManipulatorTest {
 
   /**
     * @Description: printstringtest is for testing various functionality of string.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
  
   public static testmethod void printstringtest() {
   
    String orignalstring = 'welcome to @pex Programming';
    
    // replacing @ in the poriginalstring  with A
    
    String replacedstring = orignalstring.replace('@' , 'A');
    System.debug(replacedstring);
    
    //getting substring of replacedstring in trimmedstring  
    
    String trimmedstring= replacedstring.substring(11);
    System.debug(trimmedstring);
    
   
    //spliting the poriginalstring from the blank space by using split function
    
    String[] splitedstring= orignalstring.split(' ');
    System.debug(splitedstring[0]);
    System.debug(splitedstring[1]);
   
    //converting replacedstring to uppercase
   
    String uppercaseconvertedstring = replacedstring.toUpperCase();
    System.debug(uppercaseconvertedstring);
    
    //converting uppercaseconvertedstring to lowercase  
    
    String lowercasestring = uppercaseconvertedstring.toLowerCase();
    System.debug(lowercasestring);
    
     StringManipulator printer= new  StringManipulator();
     printer.printstring('welcome to @pex Programming');
     system.assertEquals( replacedstring , printer.replacedstring );
     
    }//end printstringtest
  }//end StringPrinterTest