<!DOCTYPE html>
<html>
    <head>
        <title>Ksrct-Project</title>
        <link rel="stylesheet" href="styles.css">
        <script src="login.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <a href="index.jsp"><h5 class="home"><i class="fa-solid fa-arrow-left "></i></h5></a>
        <header class="login">
            <h1>Authorized Persons</h1><h2>Only</h2><br><br>
            <form action="validate.jsp" method="post" class="form">
                <label class="form-txt" for="uname">Username : </label>
                <input type="text" class="form-box" id="uname" name="uname" placeholder="Username"><br><br>
                <label class="form-txt" for="pass">Password : </label>
                <input type="password" class="form-box" id="pass" name="pass" placeholder="Password"><br><br><br>
                <input type="submit" class="submit" value="Submit"></a><br><br> 
                </form>
        </header>
    </body>
</html>