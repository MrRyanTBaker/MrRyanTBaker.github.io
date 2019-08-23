import java.text.DecimalFormat;
import java.util.*;

public class TempConverter {

    public static void main(String[] args) {
        
        CopyrightHeader.Header();

        System.out.println ("This application will attempt to convert temperatures from Fahrenheit and Celsius.\nPlease follow the "
            + "prompts to convert a temperature.\n");
        
        TempCalc.TempInput();
    }

}
