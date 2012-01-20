package LiquorStore;

import java.io.File;
import java.io.IOException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



/**
 *
 * @author hrkalona2
 */
public class XMLPriceParser {
    
    public double[] getparsePricesXml() {
        
        double[] prices = null;
        
        try {
          
            DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder docBuilder = docBuilderFactory.newDocumentBuilder();
            Document doc = docBuilder.parse(new File("../webapps/LiquorStore/price.xml"));

            doc.getDocumentElement ().normalize ();
                       
            NodeList list_of_products = doc.getElementsByTagName("Product");
            
            prices = new double[list_of_products.getLength()];
                        
            for(int i = 0; i < list_of_products.getLength() ; i++){
                Node first_product_node = list_of_products.item(i);
                            
                if(first_product_node.getNodeType() == Node.ELEMENT_NODE){

                    Element first_product_element = (Element)first_product_node;
                    NodeList name_list = first_product_element.getElementsByTagName("Price");
                    Element  name_element = (Element)name_list.item(0);

                    NodeList textFNList = name_element.getChildNodes();
                   
                    prices[i] = Double.valueOf(((Node)textFNList.item(0)).getNodeValue().trim());

                }
            }
                        
        }
        catch(ParserConfigurationException pce) {}
        catch(SAXException se) {}
        catch(IOException ioe) {}
        
        return prices;
        
    }
     
}
