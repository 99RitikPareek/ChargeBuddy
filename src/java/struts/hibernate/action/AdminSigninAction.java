package struts.hibernate.action;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import struts.dto.AdminSignin;
import struts.hibernate.logicalcode.LogicalCodeDAO;

public class AdminSigninAction extends ActionSupport implements  ModelDriven<AdminSignin>
{
AdminSignin adminSignin=new AdminSignin();
LogicalCodeDAO dao=new LogicalCodeDAO();

    @Override
    public AdminSignin getModel() 
    {
                    return adminSignin; 
    }

    @Override
    public String execute() throws Exception 
    {
       boolean result=dao.checkAdminSignin(adminSignin);
       if(result)
        return SUCCESS;
       else
           return ERROR;
    }
    public String passwordLogic ()throws Exception
            {
                boolean result=dao.changePassword(adminSignin);
                if(result)
                    return SUCCESS;
                else
                    return ERROR;
                
    }

    
    
}

