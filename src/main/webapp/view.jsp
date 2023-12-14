<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <title>KSRCT-Project</title>
        <link rel="stylesheet" href="styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
<body>
    <a href="index.jsp"><h5 class="home"><i class="fa-solid fa-arrow-left "></i></h5></a>
    <div class="table">
    <h1>Project Details</h1>

<table>
  <tr>
    <th>Team Name</th>
    <th>Member 1</th>
    <th>Member 2</th>
    <th>Project Title</th>
  </tr>
  <%   

      Connection con;
      PreparedStatement pst;
      ResultSet rs;
        
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost/prp","root","");
                                
      String query = "select * from project_reg";
      Statement st = con.createStatement();
                                  
      rs =  st.executeQuery(query);
                                    
      while(rs.next())
      {
        String id = rs.getString("id");
      %>
  <tr>
    <td><%=rs.getString("team") %></td>
    <td><%=rs.getString("fname") %></td>
    <td><%=rs.getString("sname") %></td>
    <td><%=rs.getString("project") %></td>
  </tr>
  <%
                                 
  }
%>
</table>

</body>