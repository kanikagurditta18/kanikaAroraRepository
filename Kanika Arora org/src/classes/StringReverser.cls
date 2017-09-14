/**
 * @Name: StringReverser
 * @Description: Takes a string as parameter and reverse it accordingly.
 * @Author: Kanika Gurditta
 **/

 public class StringReverser {
 
    @TestVisible Public String ReversedString = ' ';
    
    /**
     * @Description: prints the reverse of a string.
     * @Author: Kanika Gurditta
     * @Date: 10-08-2017
     * @Param: 1. pstringtobereversed : it is the string that is to be reversed.
     * @Return: void
     **/
   public void printreversestring(String pstringtobereversed) {
   
     // Iteration starts from one less than the length of pstringtobereversed and prints the reversed string.
     for (Integer iterator = pstringtobereversed.length()-1 ; iterator>= 0 ; iterator --) {

       ReversedString += pstringtobereversed.substring(iterator , iterator +1);

     }//end of for loop.

   System.debug(ReversedString );
    
   }//end of printreversestring
 }//end of stringReverse