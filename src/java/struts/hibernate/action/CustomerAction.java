package struts.hibernate.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import struts.dto.Customer;
import struts.hibernate.logicalcode.LogicalCodeDAO;

public class CustomerAction extends ActionSupport implements ModelDriven<Customer>
{
Customer customerA=new Customer();
LogicalCodeDAO dao=new LogicalCodeDAO();

    @Override
    public Customer getModel() 
    {
      return customerA;      
    }
    

    @Override
    public String execute() throws Exception 
    {
        dao.signUp(customerA);
        return SUCCESS;
    }

    
    
}
