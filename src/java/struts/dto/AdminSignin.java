package struts.dto;

public class AdminSignin {
    private int adminId; // pk
    private String adminPassword;
    private String adminNewPassword;
    private String adminConfirmNewPassword;

    public AdminSignin() {}

    @Override
    public String toString() {
        return "AdminSignin{" +"adminId=" + getAdminId() +", adminPassword=" + getAdminPassword() +", adminNewPassword=" + getAdminNewPassword() +", adminConfirmNewPassword=" + getAdminConfirmNewPassword() +
               '}';
    }

    public int getAdminId() {
        return adminId;
    }

    public AdminSignin(int adminId, String adminPassword, String adminNewPassword, String adminConfirmNewPassword) {
        this.adminId = adminId;
        this.adminPassword = adminPassword;
        this.adminNewPassword = adminNewPassword;
        this.adminConfirmNewPassword = adminConfirmNewPassword;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    public String getAdminNewPassword() {
        return adminNewPassword;
    }

    public void setAdminNewPassword(String adminNewPassword) {
        this.adminNewPassword = adminNewPassword;
    }

    public String getAdminConfirmNewPassword() {
        return adminConfirmNewPassword;
    }

    public void setAdminConfirmNewPassword(String adminConfirmNewPassword) {
        this.adminConfirmNewPassword = adminConfirmNewPassword;
    }
}
