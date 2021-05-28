package Posts;

import java.sql.*;
import java.util.*;

public class PostDao {

    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> list = new ArrayList<>();

        try {

            String q = "Select * from  categories";
            Statement stmt = this.con.createStatement();
            ResultSet res = stmt.executeQuery(q);
            while (res.next()) {
                int cid = res.getInt("cid");
                String name = res.getString("name");
                String description = res.getString("description");
                Category obj = new Category(cid, name, description);
                list.add(obj);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public boolean savePost(Post p) {
        boolean flag = false;
        try {
            String query = "insert into posts(pTitle,pContent,pPic,catId, userId) values(?,?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, p.getpTitle());
            stmt.setString(2, p.getpContent());
            stmt.setString(3, p.getpPic());
            stmt.setInt(4, p.getCatId());
            stmt.setString(5, p.getUserId());
            stmt.executeUpdate();
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public List<Post> getAllPost() {
        List<Post> list = new ArrayList<>();
        try {
            PreparedStatement stmt = con.prepareStatement("select * from posts order by pid desc");
            ResultSet res = stmt.executeQuery();
            while (res.next()) {
                int pid = res.getInt("pid");
                String pTitle = res.getString("pTitle");
                String pContent = res.getString("pContent");
                String pPic = res.getString("pPic");
                Timestamp date = res.getTimestamp("pDate");
                int catId = res.getInt("catId");
                String userId = res.getString("userId");
                Post post = new Post(pid, pTitle, pContent, pPic, date, catId, userId);
                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<Post> getPostByCatId(int catId) {
        List<Post> list = new ArrayList<>();
        
        
        try {
            PreparedStatement stmt = con.prepareStatement("select * from posts where catId=?");
            stmt.setInt(1,catId);
            ResultSet res = stmt.executeQuery();
            while (res.next()) {
                int pid = res.getInt("pid");
                String pTitle = res.getString("pTitle");
                String pContent = res.getString("pContent");
                String pPic = res.getString("pPic");
                Timestamp date = res.getTimestamp("pDate");
                String userId = res.getString("userId");
                Post post = new Post(pid, pTitle, pContent, pPic, date, catId, userId);
                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }
    
    public Post getPostByPostId(int postId)
    {
        Post p =null;
        String query = "select * from posts where pid=?";
        try {
            
            
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setInt(1, postId);
            ResultSet res = stmt.executeQuery();
            if(res.next())
            {
                int pid = res.getInt("pid");
                String pTitle = res.getString("pTitle");
                String pContent = res.getString("pContent");
                String pPic = res.getString("pPic");
                Timestamp date = res.getTimestamp("pDate");
                String userId = res.getString("userId");
                int cid = res.getInt("catId");
                p = new Post(pid, pTitle, pContent, pPic, date, cid, userId);
                
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }
}
