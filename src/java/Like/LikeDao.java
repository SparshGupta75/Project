
package Like;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class LikeDao {
    
    Connection con;

    public LikeDao(Connection con) {
        this.con = con;
    }
    
    public boolean insertLike(int pid, String uid, String user)
    {
        boolean flag= false;
        try {
            String query = "insert into likes(pid, uid, user) values(?,?,?)";
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setInt(1,pid);
            stmt.setString(2, uid);
            stmt.setString(3, user);
            stmt.executeUpdate();
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
    
    public int countLikeOnPost(int pid)
    {
        int count=0;
        
        try {
            String query= "select count(*) from likes where pid=?";
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setInt(1,pid);
            ResultSet res = stmt.executeQuery();
            if(res.next())
            {
                count = res.getInt("count(*)");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return count;
    }
    
    public boolean isLikedByUser(int pid, String uid, String user)
    {
        boolean flag = false;
        
        try {
            String query = "select * from likes where pid=? and uid=? and user=?";
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setInt(1,pid);
            stmt.setString(2,uid);
            stmt.setString(3,user);
            ResultSet res = stmt.executeQuery();
            if(res.next())
            {
                flag = true;
            }
            else{
                flag = false;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return flag;
    }
    
    public boolean deleteLike(int pid, String uid, String user)
    {
        boolean flag = false;
        try {
            String q = "delete from likes where pid=? and uid=? and user=?";
            PreparedStatement stmt = this.con.prepareStatement(q);
            stmt.setInt(1,pid);
            stmt.setString(2,uid);
            stmt.setString(3,user);
            stmt.executeUpdate();
            flag=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
    
}
