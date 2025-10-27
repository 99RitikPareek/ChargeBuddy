package struts.hibernate.action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import struts.dto.FeedBack;
import struts.hibernate.logicalcode.LogicalCodeDAO;

public class FeedBackAction extends ActionSupport implements ModelDriven<FeedBack> {

    FeedBack feedback = new FeedBack(); 
    LogicalCodeDAO dao = new LogicalCodeDAO();

    @Override
    public FeedBack getModel() {  
        return feedback;
    }

    @Override
    public String execute() throws Exception {
        dao.feedback(feedback);  
        return SUCCESS;
    }
}
