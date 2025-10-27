package struts.dto;

public class Agent
{
     private int agentId;//pk
     private String fullName;
     private int contact;
     private String dob;
     private String password;
     private String city;
     
public Agent(){
         
     }
@Override
    public String toString() {
        return "Agent{" + "agentId=" + agentId + ", fullName=" + fullName + ", contact=" + contact + ", date of birth=" + dob + ", password=" + password + ", city=" + city + '}';
    }

    public int getagentId() {
        return agentId;
    }

    public void setagentId(int agentId) {
        this.agentId = agentId;
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

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
