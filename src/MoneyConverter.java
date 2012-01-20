/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package LiquorStore;

import java.util.Currency;
import java.util.Locale;

/**
 *
 * @author hrkalona2
 */
public class MoneyConverter {
    
    public static String convertMoneyFormat(double total) {
        
        int total1 = (int)total;
        String temp = "" + total1;
        String converted_total1 = "";

        int number_of_dots = temp.length() / 3;

        if(temp.length() % 3 == 0) {
            number_of_dots--;
        }

        if(number_of_dots > 0) {
            int i = temp.length() - 1;

            for(int counter = 0; number_of_dots > 0; i--) {
                converted_total1 = temp.charAt(i) + converted_total1;
                counter++;
                if(counter == 3) {
                    converted_total1 = "," + converted_total1;
                    counter = 0;
                    number_of_dots--;
                }
            }

            while(i >= 0) {
                converted_total1 = temp.charAt(i) + converted_total1;
                i--;
            } 

        }
        else {
            converted_total1 = temp;
        }
        
        String converted_total2 = "" + total + "0";
        
        int i;
        for(i = 0; converted_total2.charAt(i) != '.'; i++) {}
        
        return converted_total1 + converted_total2.substring(i, i + 3) + " " + Currency.getInstance("EUR").getSymbol(Locale.FRANCE);
    
    }
    
}
