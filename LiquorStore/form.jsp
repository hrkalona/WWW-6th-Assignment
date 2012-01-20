<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored ="false" %> 
<%@ taglib uri="ConvertMoneyFunction" prefix="mine" %>  

<html>
    <head>
        <link rel="stylesheet" media="screen" href="snowstorm/lights/christmaslights.css" />
        <script type="text/javascript" src="snowstorm/lights/soundmanager2-nodebug-jsmin.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/combo?2.6.0/build/yahoo-dom-event/yahoo-dom-event.js&2.6.0/build/animation/animation-min.js"></script>
        <script type="text/javascript" src="snowstorm/lights/christmaslights.js"></script>
        <script type="text/javascript">
            var urlBase = './snowstorm/lights/';
            soundManager.url = './snowstorm/lights/';
        </script>
        <script type="text/javascript" src="snowstorm/snowstorm.js"></script>               
    </head>
    
    <jsp:useBean id="JohnnieWalkerRedLabel" class="LiquorStore.JohnnieWalkerRedLabel" scope="session"></jsp:useBean>
    <jsp:setProperty name="JohnnieWalkerRedLabel" property="quantity" param="quantity1"/>
    <jsp:setProperty name="JohnnieWalkerRedLabel" property="request" value="${pageContext.request}" />
    <jsp:setProperty name="JohnnieWalkerRedLabel" property="response" value="${pageContext.response}" />
    
    
    <jsp:useBean id="Haig" class="LiquorStore.Haig" scope="session"></jsp:useBean>
    <jsp:setProperty name="Haig" property="quantity" param="quantity2"/>
    <jsp:setProperty name="Haig" property="request" value="${pageContext.request}" />
    <jsp:setProperty name="Haig" property="response" value="${pageContext.response}" />
    
    <jsp:useBean id="Dimple" class="LiquorStore.Dimple" scope="session"></jsp:useBean>
    <jsp:setProperty name="Dimple" property="quantity" param="quantity3"/>
    <jsp:setProperty name="Dimple" property="request" value="${pageContext.request}" />
    <jsp:setProperty name="Dimple" property="response" value="${pageContext.response}" />
    
    <jsp:useBean id="SmirnoffRed" class="LiquorStore.SmirnoffRed" scope="session"></jsp:useBean>
    <jsp:setProperty name="SmirnoffRed" property="quantity" param="quantity4"/>
    <jsp:setProperty name="SmirnoffRed" property="request" value="${pageContext.request}" />
    <jsp:setProperty name="SmirnoffRed" property="response" value="${pageContext.response}" />
    
    <jsp:useBean id="UrsusRoter" class="LiquorStore.UrsusRoter" scope="session"></jsp:useBean>
    <jsp:setProperty name="UrsusRoter" property="quantity" param="quantity5"/>
    <jsp:setProperty name="UrsusRoter" property="request" value="${pageContext.request}" />
    <jsp:setProperty name="UrsusRoter" property="response" value="${pageContext.response}" />
    
    <jsp:useBean id="JoseCuervoEspecial" class="LiquorStore.JoseCuervoEspecial" scope="session"></jsp:useBean>
    <jsp:setProperty name="JoseCuervoEspecial" property="quantity" param="quantity6"/>
    <jsp:setProperty name="JoseCuervoEspecial" property="request" value="${pageContext.request}" />
    <jsp:setProperty name="JoseCuervoEspecial" property="response" value="${pageContext.response}" />
        
    <jsp:useBean id="Tanqueray" class="LiquorStore.Tanqueray" scope="session"></jsp:useBean>
    <jsp:setProperty name="Tanqueray" property="quantity" param="quantity7"/>
    <jsp:setProperty name="Tanqueray" property="request" value="${pageContext.request}" />
    <jsp:setProperty name="Tanqueray" property="response" value="${pageContext.response}" />
    
    <jsp:useBean id="GordonsDry" class="LiquorStore.GordonsDry" scope="session"></jsp:useBean>
    <jsp:setProperty name="GordonsDry" property="quantity" param="quantity8"/>
    <jsp:setProperty name="GordonsDry" property="request" value="${pageContext.request}" />
    <jsp:setProperty name="GordonsDry" property="response" value="${pageContext.response}" />
    
    <jsp:useBean id="Baileys" class="LiquorStore.Baileys" scope="session"></jsp:useBean>
    <jsp:setProperty name="Baileys" property="quantity" param="quantity9"/>
    <jsp:setProperty name="Baileys" property="request" value="${pageContext.request}" />
    <jsp:setProperty name="Baileys" property="response" value="${pageContext.response}" />
    
    <jsp:useBean id="GrandMarnierCordonJaune" class="LiquorStore.GrandMarnierCordonJaune" scope="session"></jsp:useBean>
    <jsp:setProperty name="GrandMarnierCordonJaune" property="quantity" param="quantity10"/>
    <jsp:setProperty name="GrandMarnierCordonJaune" property="request" value="${pageContext.request}" />
    <jsp:setProperty name="GrandMarnierCordonJaune" property="response" value="${pageContext.response}" />
    
    <jsp:useBean id="XMLPriceParser" class="LiquorStore.XMLPriceParser" scope="session"></jsp:useBean>
        
    
    <body>
        <div id="lights">
        <!-- lights go here -->
        </div>
        
        <br><br><br>
    
        <center><p><font size='7'><strong>e-Liquor Store</strong></font></p></center><br><br>
                                               
        <form method="POST">
        <center><table border="1">
            <tr>
                <td align="center"><strong>Category</strong></td>
                <td align="center"><strong>Image</strong></td>
                <td align="center"><strong>Item</strong></td>
                <td align="center"><strong>Price</strong></td>
                <td align="center"><strong>Quantity</strong></td>
                <td align="center"><strong>Total</strong></td>
            </tr>
            <tr>
                <td align="center">Whiskey</td>
                <td align="center"> <img src="./drinks/johnnie-walker-red-label.png"/> </td>
                <td align="center">JOHNNIE WALKER RED LABEL</td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[0])}</td>
                <td><input type="text" name="quantity1" title="Type the quantity." value="${JohnnieWalkerRedLabel.quantity}" size="10"/></td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[0] * JohnnieWalkerRedLabel.quantityint)}</td>
            </tr>
            <tr>
                <td align="center">Whiskey</td>
                <td align="center"> <img src="./drinks/haig.png"/> </td>
                <td align="center">HAIG</td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[1])}</td>
                <td><input type="text" name="quantity2" title="Type the quantity." value="${Haig.quantity}" size="10"/></td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[1] * Haig.quantityint)}</td>
            </tr>
            <tr>
                <td align="center">Whiskey</td>
                <td align="center"> <img src="./drinks/dimple.png"/> </td>
                <td align="center">DIMPLE</td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[2])}</td>
                <td><input type="text" name="quantity3" title="Type the quantity." value="${Dimple.quantity}" size="10"/></td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[2] * Dimple.quantityint)}</td>
            </tr> 
            <tr>
                <td align="center">Vodka</td>
                <td align="center"> <img src="./drinks/smirnoff-red.png"/> </td>
                <td align="center">SMIRNOFF RED</td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[3])}</td>
                <td><input type="text" name="quantity4" title="Type the quantity." value="${SmirnoffRed.quantity}" size="10"/></td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[3] * SmirnoffRed.quantityint)}</td>
            </tr>
            <tr>
                <td align="center">Vodka</td>
                <td align="center"> <img src="./drinks/ursus-roter.png"/> </td>
                <td align="center">URSUS ROTER</td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[4])}</td>
                <td><input type="text" name="quantity5" title="Type the quantity." value="${UrsusRoter.quantity}" size="10"/></td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[4] * UrsusRoter.quantityint)}</td>
            </tr>
            <tr>
                <td align="center">Tequila</td>
                <td align="center"> <img src="./drinks/jose-cuervo-especial.png"/> </td>
                <td align="center">JOSE CUERVO ESPECIAL</td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[5])}</td>
                <td><input type="text" name="quantity6" title="Type the quantity." value="${JoseCuervoEspecial.quantity}" size="10"/></td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[5] * JoseCuervoEspecial.quantityint)}</td>
            </tr> 
            <tr>
                <td align="center">Gin</td>
                <td align="center"> <img src="./drinks/tanqueray.png"/> </td>
                <td align="center">TANQUERAY</td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[6])}</td>
                <td><input type="text" name="quantity7" title="Type the quantity." value="${Tanqueray.quantity}" size="10"/></td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[6] * Tanqueray.quantityint)}</td>
            </tr>
            <tr>
                <td align="center">Gin</td>
                <td align="center"> <img src="./drinks/gordons_dry.png"/> </td>
                <td align="center">GORDONS DRY</td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[7])}</td>
                <td><input type="text" name="quantity8" title="Type the quantity." value="${GordonsDry.quantity}" size="10"/></td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[7] * GordonsDry.quantityint)}</td>
            </tr> 
            <tr>
                <td align="center">Liquer</td>
                <td align="center"> <img src="./drinks/baileys.png"/> </td>
                <td align="center">BAILEYS</td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[8])}</td>
                <td><input type="text" name="quantity9" title="Type the quantity." value="${Baileys.quantity}" size="10"/></td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[8] * Baileys.quantityint)}</td>
            </tr>  
            <tr>
                <td align="center">Liquer</td>
                <td align="center"> <img src="./drinks/grand_marnier_cordon_jaune.png"/> </td>
                <td align="center">GRAND MARNIER CORDON JAUNE</td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[9])}</td>
                <td><input type="text" name="quantity10" title="Type the quantity." value="${GrandMarnierCordonJaune.quantity}" size="10"/></td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[9] * GrandMarnierCordonJaune.quantityint)}</td>
            </tr> 
            <tr> 
                <td align="center"><strong>Total</strong></td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td align="right">${mine: convertMoneyFormat(XMLPriceParser.parsePricesXml[0] * JohnnieWalkerRedLabel.quantityint 
                                      + XMLPriceParser.parsePricesXml[1] * Haig.quantityint 
                                      + XMLPriceParser.parsePricesXml[2] * Dimple.quantityint
                                      + XMLPriceParser.parsePricesXml[3] * SmirnoffRed.quantityint
                                      + XMLPriceParser.parsePricesXml[4] * UrsusRoter.quantityint
                                      + XMLPriceParser.parsePricesXml[5] * JoseCuervoEspecial.quantityint
                                      + XMLPriceParser.parsePricesXml[6] * Tanqueray.quantityint
                                      + XMLPriceParser.parsePricesXml[7] * GordonsDry.quantityint
                                      + XMLPriceParser.parsePricesXml[8] * Baileys.quantityint
                                      + XMLPriceParser.parsePricesXml[9] * GrandMarnierCordonJaune.quantityint)}</td>
            </tr>     
        </table></center>
            <br>
            <center><font size='3'>We wish you a Merry Christmas and a Happy New Year!</font></center>
            <center><font size='3'>Dont forget, driving while either intoxicated or drunk is dangerous.</font></center>
            <br>

            <center><input type="image" src="add_to_cart.png" value="Checkout" title="Checkout."/></center>
        </form>
            
        <center><table border="0">
            <tr>
                <td><form method="GET" action="GetProject4Info.do">
            <input type="submit" value="Information" title="Get some information about this project."/>       
        </form></td>
            
        <td><form method="GET" action="project4.rar">
            <input type="submit" value="Source Code" title="Get the source code."/>  
        </form></td></tr></table></center>         
    
        <center><iframe src="http://free.timeanddate.com/clock/i2wfwpos/n26/fn6/fs16/fc596/tct/pct/ftb/pa8/tt0/tw1/th1/ta1/tb4" frameborder="0" width="213" height="58" allowTransparency="true"></iframe></center>
        
        <embed src="song.mp3" controls="playbutton" autostart="false" loop="true" width="17" height="16" volume="45"><strong> Sound On/Off</strong></embed>
        
        <p align=right><font size='2'><strong><a href="https://hrkalona.wordpress.com/">hrkalona</a> 2011-2012, all rights reserved.</strong></font></p>
        
        
   
    </body>
    
</html>