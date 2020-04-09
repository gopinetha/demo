import java.util.*;
public class Anagram
{ 
    public static String sortString(String Str) 
    {
        char tempArray[] = Str.toCharArray();
        Arrays.sort(tempArray); 
        return new String(tempArray); 
    } 
      
   
    public static void main(String[] args) 
    { 
	//taking the input
	    Scanner sc=new Scanner(System.in);
        String Str1 = sc.next();
		String Str2=sc.next();		
        String out1 = sortString(Str1); 
		 String out2 = sortString(Str2); 

          if(out1.equals(out2)){
        System.out.println("true");
		}
		else
	System.out.println("false");
    } 
} 
