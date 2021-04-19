
package FacultyPackage;
import java.sql.*;

/**
 *
 * @author DELL
 */
public class User {
    
    private String FID;
    private String FirstName;
    private String LastName;
    private String Email;
    private String Password;
    private String Gender;
    private String BranchID;
    private String Dob;

    public User(String FID, String FirstName, String LastName, String Email, String Password, String Gender, String BranchID, String Dob) {
        this.FID = FID;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Email = Email;
        this.Password = Password;
        this.Gender = Gender;
        this.BranchID = BranchID;
        this.Dob = Dob;
    }
    
    public User()
    {
        
    }

    public String getFID() {
        return FID;
    }

    public void setFID(String FID) {
        this.FID = FID;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getBranchID() {
        return BranchID;
    }

    public void setBranchID(String BranchID) {
        this.BranchID = BranchID;
    }

    public String getDob() {
        return Dob;
    }

    public void setDob(String Dob) {
        this.Dob = Dob;
    }
}
