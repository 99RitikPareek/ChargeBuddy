package struts.dto;

import java.io.File;

public class Customer   extends Object
{
    
    private String customerId;
    private String password;
    private String fullName;
    private long contact;
    private String dOB;
    private String email;
    

    

    

    
    
    @Override
    public String toString() 
    {
            return  customerId+" "+password+" "+fullName+" "+contact+" "+dOB+" ";
                    }

    public Customer(String customerId, String password, String fullName, long contact, String dOB, String email) {
        this.customerId= customerId;
        this.password = password;
        this.fullName = fullName;
        this.contact = contact;
        this.dOB = dOB;
        
    }

    
    public Customer() {
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public long getContact() {
        return contact;
    }

    public void setContact(long contact) {
        this.contact = contact;
    }

    public String getdOB() {
        return dOB;
    }

    public void setdOB(String dOB) {
        this.dOB = dOB;
    }

    
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    
    
    
}
