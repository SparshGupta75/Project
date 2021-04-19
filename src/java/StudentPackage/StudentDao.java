

package StudentPackage;
import java.sql.*;


public class StudentDao {
    
    private Connection con;

    public StudentDao(Connection con) {
        this.con = con;
    }
    public boolean saveStudent(Student student)
    {
        boolean flag = false;
        
        try {
            
            
            String query = "insert into student values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setString(1, student.getSID());
            stmt.setString(2, student.getFirstName());
            stmt.setString(3, student.getLastName());
            stmt.setString(4, student.getEmail());
            stmt.setString(5, student.getPassword());
            stmt.setString(6, student.getGender());
            stmt.setString(7, student.getBranchID());
            stmt.setString(8 ,student.getDob());
            stmt.setString(9 ,student.getYear());
            
            stmt.executeUpdate();
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return flag;
    }
    
    public Student getUserByEmailAndPassword(String email, String password)
    {
        Student student = null;
        
        try {
            String query = "Select * from student where email=? and password=?";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1,email);
            stmt.setString(2,password);
            ResultSet set = stmt.executeQuery();
            
            if(set.next())
            {
                student = new Student();
                
                String SID = set.getString("SID");
                student.setSID(SID);
                
                student.setFirstName(set.getString("FirstName"));
                student.setLastName(set.getString("LastName"));
                student.setEmail(set.getString("Email"));
                student.setPassword(set.getString("Password"));
                student.setGender(set.getString("Gender"));
                student.setBranchID(set.getString("BranchID"));
                student.setDob(set.getString("Dob"));
                student.setYear(set.getString("Year"));
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return student;
    }
    
}
