
package struts.hibernate.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import struts.dto.Complain;
import struts.hibernate.logicalcode.LogicalCodeDAO;


public class ComplainAction extends ActionSupport implements ModelDriven<Complain>{
    Complain complain=new Complain();
    LogicalCodeDAO dao=new LogicalCodeDAO();

    @Override
    public Complain getModel() {
        return complain;
    }

    @Override
    public String execute() throws Exception {
        dao.complain(complain);
        return SUCCESS;
    }
    
    
    
}
