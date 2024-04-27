package Model;

public class SignUpUser {
    private String email;
    private String username;
    private String password;
    private String contactNumber;

    public SignUpUser(String username, String password, String contactNumber, String email) {
        this.email = email;
        this.username = username;
        this.password = password;
        this.contactNumber = contactNumber;

    }

    public Object getEmail() {

        return email;

    }

    public String getUsername() {
        return username;

    }

    public String getPassword() {

        return password;

    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setPassword(String newPassword) {

    }

}
