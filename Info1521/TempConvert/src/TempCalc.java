import java.text.DecimalFormat;
import java.util.Scanner;

public class TempCalc {    
    
    private static final Scanner input = new Scanner(System.in);

    public static void TempInput() {
        
        DecimalFormat df = new DecimalFormat("##########.##");
        
        String choice = "y";
        
        while(choice.equalsIgnoreCase("y")) {
            double userInput1 = 0;
            double cTemp;
            boolean isNumber;
            
        System.out.println("Please enter a temperature, in Fahrenheit, that you'd like to convert.");
            
            do{ 
                if(input.hasNextDouble()){
                    userInput1 = input.nextDouble();
                    isNumber = true;
                }else {
                    System.out.println("Invalid entry. Please enter a numeric value.");
                    isNumber = false;
                    input.next();
                }
            } while (!isNumber);
              
        cTemp = (userInput1 - 32) * 5 / 9;          

        System.out.println ("You entered " + userInput1 + " degrees Fahrenheit, which is " + df.format(cTemp) + " degrees Celsius.\n"
                + "The formula used is: \n" + "(" + userInput1 + " - 32) * 5 / 9 = " + df.format(cTemp) + "\n");
        
        //Original working code:
        /*System.out.println ("You entered " + userInput1 + " degrees Fahrenheit, which is " + cTemp + " degrees Celsius.\n"
                        + "The formula used is: \n" + "(" + userInput1 + " - 32) * 5 / 9 = " + cTemp);
        //displays converted value.*/
        
        System.out.println("Would you like to make another calculation? \n" + "Y/N: ");
            choice = input.next();
            System.out.println();
        }
      
        System.out.println("Thank you for participating.");  
    } 

}