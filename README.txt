Installation.

1) Install apache-tomcat http://tomcat.apache.org/
2) Extract the LiquorStore folder to ..\apache-tomcat-x.x.xx\webapps.
3) Run startup.bat or startup.sh, depending on your operating system.
4) Access the page on this link, http://localhost:8080/LiquorStore/form.jsp?size=tiny

The src folder contains the source code of the servlets.
If you want to change the servlet's source code, you need to compile the java files, get the generated classes and copy.
them to ..\apache-tomcat-x.x.xx\webapps\LiquorStore\WEB-INF\classes\LiquorStore