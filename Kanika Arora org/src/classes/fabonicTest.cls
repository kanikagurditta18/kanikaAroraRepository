@isTest
public with sharing class fabonicTest {
  
public static testmethod void fibTest( ) {
 Integer first_num =0;
Integer second_num =1;
Integer number_num1;
System.debug(first_num);
System.debug(second_num);
for(Integer i = 2 ; i<10;i++) {
Integer third_num = first_num + second_num;
second_num = first_num;
first_num = third_num;
System.debug(third_num);
fabonic fabo = new fabonic();
fabo.fib(10);

}
}}