
package FacultyPackage;
import java.sql.*;

public class UserDao {
    
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    // method to insert user to data base
    
    public boolean saveUser(User user)
    {
        boolean f = false;
        try{
           String query = "insert into faculty values (?,?,?,?,?,?,?,?)";
           PreparedStatement pstmt = this.con.prepareStatement(query);
           pstmt.setString(1, user.getFID());
           pstmt.setString(2, user.getFirstName());
           pstmt.setString(3, user.getLastName());
           pstmt.setString(4, user.getEmail());
           pstmt.setString(5, user.getPassword());
           pstmt.setString(6, user.getGender());
           pstmt.setString(7, user.getBranchID());
           pstmt.setString(8, user.getDob());
           
           pstmt.executeUpdate();
           f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    public User getUserByEmailAndPassword(String email, String password)
    {
        User user = null;
        
        try {
            String query = "Select * from faculty where email=? and password=?";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1,email);
            stmt.setString(2,password);
            ResultSet set = stmt.executeQuery();
            
            if(set.next())
            {
                user = new User();
                
                String FID = set.getString("FID");
                user.setFID(FID);
                
                user.setFirstName(set.getString("FirstName"));
                user.setLastName(set.getString("LastName"));
                user.setEmail(set.getString("Email"));
                user.setPassword(set.getString("Password"));
                user.setGender(set.getString("Gender"));
                user.setBranchID(set.getString("BranchID"));
                user.setDob(set.getString("Dob"));
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
}
