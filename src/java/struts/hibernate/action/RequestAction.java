package struts.hibernate.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Date;
import struts.dto.Request;
import struts.hibernate.logicalcode.LogicalCodeDAO;

public class RequestAction  extends ActionSupport implements ModelDriven<Request>
{

    Request request= new Request();
    LogicalCodeDAO dao=new LogicalCodeDAO();
    @Override
    public Request getModel() 
    {
    return request;
    }

    
    
    @Override
    public String execute() throws Exception 
    {
        request.setDateOfOrder(new Date());
        dao.Request1(request);
        return SUCCESS;
    }
    
    
}
