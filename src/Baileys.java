/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package LiquorStore;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hrkalona2
 */
public class Baileys {
    private boolean flag;
    private int quantity;
    private HttpServletResponse response;   
    private HttpServletRequest request;
    
    public Baileys() {
        flag = false;
        quantity = 0;
    }
    
    public int getQuantityint() {      
        
        if(flag == false) {
            Cookie[] cookies = request.getCookies();
            if(cookies != null) {
                for(int i = 0; i < cookies.length; i++) {
                    Cookie cookie = cookies[i];
                    if(cookie.getName().equals("Baileys")) {  
                        String users_basket = cookie.getValue();
                        quantity = Integer.parseInt(users_basket);
                        break;
                    }
                 }
             }
        }
        
        flag = true;
        
       
        return quantity;

    }
    
    public String getQuantity() {

        if(flag == false) {
            Cookie[] cookies = request.getCookies();
            if(cookies != null) {
                for(int i = 0; i < cookies.length; i++) {
                    Cookie cookie = cookies[i];
                    if(cookie.getName().equals("Baileys")) {  
                        String users_basket = cookie.getValue();
                        quantity = Integer.parseInt(users_basket);
                        break;
                    }
                 }
             }
        }
        
        flag = true;
       
        return quantity == 0 ? "" : "" + quantity;

    }
    
    public void setResponse(HttpServletResponse response) {
        
        this.response = response;
        
    }
    
    public void setRequest(HttpServletRequest request) {
        
        this.request = request;
        
    }
    
    
    
    public void setQuantity(String squantity) {
        
       try {
           quantity = Integer.parseInt(squantity);
       }
       catch(NumberFormatException ex) {
           quantity = 0;
       }
       
       Cookie cookie = new Cookie("Baileys", "" + quantity);
       cookie.setMaxAge(60 * 60 * 60 * 60 * 60);
       response.addCookie(cookie);
              
    }
    
}
