/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author taha
 */


import java.sql.*;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;

public class SqlCustomerInsert implements SqlTableInsert{
 String s="jdbc:sqlserver://TAHA;databaseName=Cart";
 static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:sqlserver://TAHA;databaseName=Cart";
   static final String USER = "sa";
   static final String PASS = "TAHA";
 
 @Override
    public void Insert()  {
             
               Connection conn = null;
   Statement stmt = null;
      String csvFile = "C:/Users/taha/Desktop/Customer.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
          List<String> mylist=new ArrayList<String>();
        try {

            br = new BufferedReader(new FileReader(csvFile));
            while ((line = br.readLine()) != null) {
            //    System.out.println(line);
                // use comma as separator
                String Str=line+",";
               mylist.add(Str);

               // System.out.println(country[0]);

            }

            
            
        
        
        
        
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } 
     
     ///////////////////////////////////////////////
     
      
     
     for(int i=1;i<mylist.size();i++)
     {
         List<String> mylist1=new ArrayList<String>();
         String s1=mylist.get(i);
         String s2="";
         for(int j=0;j<s1.length();j++)
         {
             if(s1.charAt(j)==',')
             {
                 mylist1.add(s2);
                 s2="";
                 
             }
             else
             {
                 s2=s2+s1.charAt(j);
             }
             
         }
       
         
     try{
             try {
                 //STEP 2: Register JDBC driver
                 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
             } catch (ClassNotFoundException ex) {
                 Logger.getLogger(SqlCustomerInsert.class.getName()).log(Level.SEVERE, null, ex);
             }

      //STEP 3: Open a connection
     System.out.println("Connecting to a selected database...");
     conn = DriverManager.getConnection(DB_URL, USER, PASS);
      System.out.println("Connected database successfully...");
     
     //STEP 4: Execute a query
     System.out.println("Inserting records into the table...");
    stmt = conn.createStatement();
     
      String sql = "INSERT INTO Customer " +
                   "VALUES ("+mylist1.get(0) +", '"+mylist1.get(1)+"', '"+mylist1.get(2)+"', '"+mylist1.get(3).toLowerCase()+"')";
      stmt.executeUpdate(sql);
     

      }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
      }           
     
     
     
     
     }
   
        
    }//insert
    
}
