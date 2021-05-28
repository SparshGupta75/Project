<%@page import="Like.LikeDao"%>
<%@page import="StudentPackage.Student"%>
<%@page import="StudentPackage.StudentDao"%>
<%@page import="java.util.List"%>
<%@page import="Posts.Post"%>
<%@page import="StudentPackage.ConnectionProvider"%>
<%@page import="Posts.PostDao"%>

<style type="text/css">
    .img-hover-zoom--brightness img {
        transition: transform 2s, filter 0.5s ease-in-out;
        transform-origin: center center;
        filter: brightness(80%);
    }

    /* The Transformation */
    .img-hover-zoom--brightness:hover img {
        filter: brightness(100%);
        /*transform: scale(1.3);*/
    }
</style>

<div class="row">

    <%
        PostDao dao = new PostDao(ConnectionProvider.getConnection());
        int cid = Integer.parseInt(request.getParameter("cid"));
//        int pid = Integer.parseInt(request.getParameter("pid"));
        List<Post> posts = null;
        if (cid == 0) {
            posts = dao.getAllPost();
        } else {
            posts = dao.getPostByCatId(cid);
        }
        if (posts.size() == 0) {
//            out.println("<div class='container text-center'><h3 >No posts in this category</h3></div>");
//            return;
    %>

    <div class='container text-center'><h3 >No posts in this category</h3></div>
    <div class="alert alert-success container text-center mx-5" role="alert">
        <br>
        <h4 class="alert-heading">Sorry, but there are no posts in this category yet :(</h4>
        <p>
            Come again later to check if there is any post in this section or not! 
        </p>
        <hr>
        <p class="mb-0">Meanwhile, you can add posts in this section by clicking <a href="AddPost.jsp" style="text-decoration: none;">here</a>.</p>
    </div>

    <%
            return;

        }
        for (Post p : posts) {
    %>
    <div class="col-md-6 mt-2"> 
        <div class="card">

            <div class="img-hover-zoom img-hover-zoom--brightness">
                <img src="PostPictures/<%= p.getpPic()%>" class="card-img-top" alt="..." height="250px" width="250px">
            </div>

            <div class="card-body">
                <h4><B><%=p.getpTitle()%></b></h4>
                <p class="post-content" style="overflow: hidden;
                   text-overflow: ellipsis;
                   display: -webkit-box;
                   -webkit-line-clamp: 3; /* number of lines to show */
                   -webkit-box-orient: vertical;"> <%= p.getpContent()%></p>
            </div>
            <%
                StudentDao d = new StudentDao(ConnectionProvider.getConnection());
                Student student = (Student) session.getAttribute("currentUser");
                LikeDao ldao = new LikeDao(ConnectionProvider.getConnection());

            %>
            <div class="card-footer">

                <a href="#" class="btn-primary btn-sm" role="button"><i class="fa fa-thumbs-o-up"></i><span class="like-counter" id="btnText"> <%= ldao.countLikeOnPost(p.getPid())%></span></a>
                <a href="ShowPost.jsp?post_id=<%= p.getPid()%>" class="btn-primary btn-sm" style="text-decoration: none;">Read More</a>
                <a href="#" class="btn-primary btn-sm"><i class="fa fa-commenting-o"></i></a>
            </div>
        </div>
    </div>

    <%
        }
    %>
</div>