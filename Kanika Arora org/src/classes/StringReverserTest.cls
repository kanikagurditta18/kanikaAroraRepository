@isTest 
 /**
 * @Name: StringReverser
 * @Description: Test the functionality of StringReverser.
 * @Author: Kanika Gurditta
 **/   
 
 public with sharing class StringReverserTest {
 
   /**
     * @Description: test the functionality of StringReverser
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Return: void
     **/
 
   public static testmethod void reversestringTest() {
   
     String reveresdstring = ' ';
     String stringtobereversed = 'hello';
     
     for (Integer StringIterator = 4 ; StringIterator>= 0 ; StringIterator--) {

      reveresdstring += stringtobereversed.substring(StringIterator, StringIterator+1);

     }//end of for loop.
   System.debug(reveresdstring);
  
   test.startTest();
   
   //making the instance of a StringReverser
   StringReverser reverser = new StringReverser();
   reverser.printreversestring('hello');
   
   test.stoptest();
   
   System.assertEquals(reveresdstring , reverser.ReversedString);
   
   }//end reversestringTest
 }//end StringReverserTest