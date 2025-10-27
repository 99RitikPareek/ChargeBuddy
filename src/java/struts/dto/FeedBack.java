package struts.dto;

public class FeedBack
{
     private int customerId;//pk
     
     private String feedBack;
     
     
public FeedBack(){
         
     }

    @Override
    public String toString() {
        return "FeedBack{" + "customerId=" + customerId +"feedBack" + feedBack +'}';
    }

    public FeedBack(int customerId ,String feedBack) {
        this.customerId = customerId;
     
        this.feedBack = feedBack;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getFeedBack() {
        return feedBack;
    }

    public void setFeedBack(String feedBack) {
        this.feedBack = feedBack;
    
    }
}
