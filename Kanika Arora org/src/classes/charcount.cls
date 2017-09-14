public class charcount {
public void method() {
String ch;
String str ='hlo everyone';
Integer count = 0;
Integer len = str.length();
while(len>0) {
ch=str.subString(0,1);
        Integer i = 0;

        while(str.substring(i , i+1)==ch)
        {
                count =count+i;
                i++;
        }

        str.substring(count);
        System.debug(ch);
        System.debug(count);
}
} }