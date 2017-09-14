public class fabonic {

Integer first_num =0;
Integer second_num =1;
Integer number_num1;
public void fib( Integer number_num) {
System.debug(first_num);
for(Integer i = 2 ; i<number_num ;i++) {
Integer third_num = first_num + second_num;
second_num = first_num;
first_num = third_num;
System.debug(third_num);
}
}
}