<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<% 

    if(request.getParameter("submit")!=null)
    {
        String team = request.getParameter("team");
        String fname = request.getParameter("fname");
        String sname = request.getParameter("sname");
        String project = request.getParameter("project");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try
        {
            con = DriverManager.getConnection("jdbc:mysql://localhost/prp","root","");
            pst = con.prepareStatement("insert into project_reg(team,fname,sname,project)values(?,?,?,?)");
            pst.setString(1, team);
            pst.setString(2, fname);
            pst.setString(3, sname);
            pst.setString(4, project);
            pst.executeUpdate();
            pst.close();
            con.close();
        }
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
        %> 
    <script>   
        alert("Registeration Successfull");     
    </script> 
    <%             
    }
    %>


<!DOCTYPE html>
<html>
    <head>
        <title>KSRCT-Project</title>
        <link rel="stylesheet" href="styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        
        <div class="form">
            <h1>Project Registeration</h1>
        </div>
        <div class="reg-form">
            <form action="#" method="post">
                <label for="team">Team Name:</label>
                <input type="text" id="team" name="team" placeholder="Your Team name">
                <br><br>
                <label for="fname">Member 1:</label>
                <input type="text" id="fname" name="fname" placeholder="Member 1 name">
                <br><br>
                <label for="sname">Member 2:</label>
                <input type="text" id="sname" name="sname" placeholder="Member 2 name">
                <br><br>
                <label for="project">Project Title: </label>
                <input type="text" id="project" name="project" placeholder="Your Project Title">
                <br><br>
                <br><br>
                <input type="submit" id="submit" class="submit" value="Submit" name="submit">
    
            </form>
        </div>
    </body>
</html>
