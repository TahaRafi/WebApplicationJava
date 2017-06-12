/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

/**
 *
 * @author taha
 */
public class InsertFactory {
    
    public SqlTableInsert GetTable(String value)
    {
        if(value=="Customer")
        {
            return new SqlCustomerInsert();
        }
        
        if(value=="Promotion")
        {
            return new SqlPromotionInsert();
        }
        
        if(value=="Address")
        {
            return new SqlAddressInsert();
        }
        
        if(value=="ProductType")
        {
            return new SqlProductTypeInsert();
        }
         if(value=="Product")
        {
            return new SqlProductInsert();
        }
          if(value=="Stock")
        {
            return new SqlStockInsert();
        }
          
        return null;
    }
    
}
