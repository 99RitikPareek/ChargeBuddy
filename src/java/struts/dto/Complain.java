package struts.dto;

public class Complain
{
     private int customerId;//pk
     private int complainId;// auto generated
     private String fullName;
     private int contact;      
     private String complain;
     
     
public Complain(){
         
     }

    @Override
    public String toString() {
        return "Complain{" + "customerId=" + customerId + ",complainId=" + complainId  +  ",fullName=" + fullName + ",contact=" + contact + ",complain=" +complain + '}';
    }

    public Complain(int customerId, int complainId ,String fullName, int contact,String complain) {
        this.customerId = customerId;
        this.complainId = complainId;
        this.fullName = fullName;
        this.contact = contact;
        this.complain = complain;
        
        
    }
    

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }
    
    public int getComplainId() {
        return complainId;
    }
    public void setComplainId(int complainId) {
        this.complainId = complainId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getContact() {
        return contact;
    }

    public void setContact(int contact) {
        this.contact = contact;
    }

    public String getComplain() {
        return complain;
    }

    public void setComplain(String complain) {
        this.complain = complain;
    }
}

   