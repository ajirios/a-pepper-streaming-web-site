
<%-- 
    Document   : index
    Created on : 1-May-2016, 1:27:40 AM
    Author     : Ajiri Osauzo Jeffrey
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
<head>
<title>Home | Chill</title>
<link rel="shortcut icon" type="image/png" href="circle.png"/>
<meta charset="utf-8" /> 
<style type="text/css">
  
  header
  {
    background-color: #FFF;
    background: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#bababa));
   background: -webkit-linear-gradient(top, #ffffff, #bababa);
   background: -moz-linear-gradient(top, #ffffff, #bababa);
   background: -ms-linear-gradient(top, #ffffff, #bababa);
   background: -o-linear-gradient(top, #ffffff, #bababa);
    margin-left: 0;
    margin-right: 0;
    margin-top: 0;
    height: 50px;
    color: #000;
    opacity: 0.7;
    box-shadow: 0px 2px 5px #AAA;
    text-indent: 30px;
  }
  
  .head
  {
      width: 90%;
      height: 50px;
      margin-left: auto;
      margin-right: auto;
      margin-top: 0;
  }
  
  body
  {
    margin: 0;
    background-color: #EEE;
    font-family: sans-serif;
  }
  
  nav ul
  {
    list-style-type: none;
    overflow: auto;
    margin-right: 0;
    margin-top: 0;
    margin-bottom: 0;
    margin-left: 0;
  }

  nav ul li
  {
    float: right;
  }

  nav ul li a:link, nav ul li a:visited
  {
    display: block;
    background-color: #fff;
    background: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#bababa));
    background: -webkit-linear-gradient(top, #ffffff, #bababa);
    background: -moz-linear-gradient(top, #ffffff, #bababa);
    background: -ms-linear-gradient(top, #ffffff, #bababa);
    background: -o-linear-gradient(top, #ffffff, #bababa);
    opacity: 0.8;
    text-align: right;
    padding-top: 18px;
    padding-bottom: 18px;
    padding-left: 20px;
    padding-right: 20px;
    text-decoration: none;
    color: #fff;
    font-family: /*"Josefin Slab", Arial, Helvetica, Pacifico, Rockwell,*/ sans-serif;
    font-size: 12px;
  }

  nav ul li a:hover, nav ul li a:active
  {
    color: #e00;
    opacity: 1.0;
  }
      
  .sept
  {
    background-color: #FFF;
    margin-right: 0;
    margin-top: 0;
    margin-left: 500px;
    height: 505px;
    color: #000;
    opacity: 0.7;
    box-shadow: 0px 2px 5px #AAA;
  }
  
  .sept2
  {
    background-color: #EEE;
    margin-right: 0;
    margin-top: 0;
    margin-left: 500px;
    height: 500px;
    color: #000;
  }
  
  nav
  
  {
      
    margin-right: 0px;
    float: right;
      
  }
  
  footer
  {
    background-color: #FFF;
    margin-left: 0;
    margin-right: 0;
    margin-bottom: 0;
    height: 300px;
    box-shadow: 0px 2px 5px #AAA;
    opacity: 0.7;
    margin-top: -200px;
    font-size: 12px;
  }
  
  .logos
  {
      background-color: #333;
      margin-left: 10px;
      margin-right: 10px;
      height: 200px;
      box-shadow: 0px 2px 5px #AAA;
      opacity: 0.8;
      margin-top: -500px;
  }
  
  #logos
  {
      height: 50%;
      opacity: 1.0;
  }
  
  .button {
   border-top: 1px solid #d4003c;
   background: #780000;
   background: -webkit-gradient(linear, left top, left bottom, from(#b00000), to(#780000));
   background: -webkit-linear-gradient(top, #b00000, #780000);
   background: -moz-linear-gradient(top, #b00000, #780000);
   background: -ms-linear-gradient(top, #b00000, #780000);
   background: -o-linear-gradient(top, #b00000, #780000);
   padding: 7.5px 25px;
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: white;
   font-size: 17px;
   font-family: 'Lucida Grande', Helvetica, Arial, Sans-Serif;
   text-decoration: none;
   vertical-align: middle;
   }
.button:hover {
   border-top-color: #c90000;
   background: #c90000;
   color: #f2efef;
   }
.button:active {
   border-top-color: #a30a11;
   background: #a30a11;
   }
   
   .button2 {
   border-top: 1px solid #55b506;
   background: #2a4d02;
   background: -webkit-gradient(linear, left top, left bottom, from(#539c00), to(#2a4d02));
   background: -webkit-linear-gradient(top, #539c00, #2a4d02);
   background: -moz-linear-gradient(top, #539c00, #2a4d02);
   background: -ms-linear-gradient(top, #539c00, #2a4d02);
   background: -o-linear-gradient(top, #539c00, #2a4d02);
   padding: 7.5px 25px;
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: white;
   font-size: 17px;
   font-family: Sans-Serif;
   text-decoration: none;
   vertical-align: middle;
   margin-right: 0px;
   margin-top: 5px;
   }
.button2:hover {
   border-top-color: #2c7d04;
   background: #2c7d04;
   color: #f2efef;
   }
.button2:active {
   border-top-color: #a30a11;
   background: #a30a11;
   }
  
  .rimground
  {
    width: 100px;
    height: 150px;
    opacity: 1.0;
    margin-top: 5px;
    margin-bottom: 5px;
    margin-left: 5px;
    margin-right: 5px;
    float: left;
    text-align: center;
    color: #FFF;
    font-family: sans-serif;
    font-size: 10px;
  }
    
  .bol
  {
      float: left;
      margin-top: 5px;
      margin-left: 0px;
      width: 30px;
  }
  
  #container
  {
      background-color: #fff;
      margin-left: auto;
      margin-right: auto;
      margin-top: 70px;
      width: 90%;
      height: 500px;
  }

.moviediv
{
    margin: 25px auto 25px auto;
    height: 300px;
    background-color: #e63;
}

.seriediv
{
    margin: 25px auto 25px auto;
    height: 300px;
    background-color: #e63;
}

.musicdiv
{
    margin: 25px auto 25px auto;
    height: 300px;
    background-color: #e63;
}

.gamediv
{
    margin: 25px auto 25px auto;
    height: 300px;
    background-color: #e63;
}

  .divers
  {
      margin-left: 0;
      margin-right: 0;
      margin-top: 0;
      height: 500px;
  }
  
  .right
  {
      margin-left: 0;
      margin-top: 0px;
      height: 500px;
      width: 500px;
      background-color: #e63;
      float: left;
  }
  
  .createaccount
  {
      color: #FFF;
      width: 400px;
      margin-left: auto;
      margin-right: auto;
      text-align: center;
  }
  
  .titles
  {
      width: 410px;
      height: 300px;
      margin-top: 20px;
      margin-left: 90px;
  }
  
  .names
  {
    width: 300px;
    height: 30px;
    padding: 4px;
    margin: 5px 100px 5px auto;
    border-radius: 10px;
    font-size: 17px;
  }
  
  .boxes
  {
      width: 200px;
      height: 300px;
      margin-top: 20px;
      margin-left: 20px;
      background-color: #e45;
  }

.copyright
{
    margin-left: auto;
    margin-right: auto;
    text-align: center;
    width: 1000px;
}

.click-agreement
{
    color: #fff;
    font-size: 9px;
}

.footnotes
{
    float: left;
    font-size: 12px;
    height: 230px;
    width: 200px;
    text-align: left;
}

.notes
{
    text-decoration: none;
    color: #000;
}

.notes:hover
{
    color: #e63;
}
  
  #epic
  {
      margin-left: 0px;
  }
  
  
</style>

<script type="text/javascript">
  
  
  
</script>

</head>

<body>
  
  <header>
      
    
      <div class="head">
        
        <a href="index.html"><img class="bol" src="circle2.png" alt="bol"></a>
        
            <nav>
                
                <ul>
                    <li><a href="music/index.html" >Users</a></li>
                    <li><a href="games/index.html">Press</a></li>
                    <li><a href="games/index.html">Games</a></li>
                    <li><a href="music/index.html" >Music</a></li>
                    <li><a href="music/index.html" >Videos</a></li>
                    <li><a href="movies/index.html" >Movies</a></li>
                    <li><a href="series/index.html" >Series</a></li>
                    <li><a href="channels/index.html">Channels</a></li>
                </ul>
                    
            </nav>
        
      </div>
    
  </header>
    
    <div class="divers">
    <div class="right">
        <div class="createaccount"><h2>Create an account.</h2></div>
        <form action="" method="post">
            <div class="titles">
                <input type="text" class="names" id="useremail" placeholder="First Name">
            <input type="text" class="names" id="useremail" placeholder="Last Name">
           <input type="text" class="names" id="useremail" placeholder="Middle Name">
            <input type="email" class="names" id="useremail" placeholder="Email Address">
            <input type="password" class="names" id="useremail" placeholder="Password">
            <input type="password" class="names" id="useremail" placeholder="Password">
            Male<input type="radio">Female<input type="radio">
            <p class="click-agreement"> By clicking "Create An Account", you agree to our <a class="click-agreement" href="">terms of service</a> and <a class="click-agreement" href="">privacy policy</a>.</p>
            
            <button class="button2">Create An Account</button>
            
            </div>
            
            
        </form>
    </div>
    <div class="sept2">
        
        <img src="epic.png" alt="epic" id="epic" width="1000">
        <form action="" method="post">
            
        </form>
    </div>
    </div>
    
    <%!
            public class Actor 
{
    String URL = "jdbc:mysql://localhost:3306/sakila";
    String USERNAME = "root";
    String PASSWORD = "Empire7";
    Connection connection = null;
    PreparedStatement insertActors = null;
    ResultSet resultSet = null;

    public Actor()
    {
        try
        {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            insertActors = connection.prepareStatement("INSERT INTO actor (first_name, last_name, last_update)" + " VALUES (?, ?, ?)");
        }

        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public int setActors(String firstname, String lastname, Timestamp timeStamp)
    {
        int result = 0;

        try
        {
            insertActors.setString(1, firstname);
            insertActors.setString(2, lastname);
            insertActors.setTimestamp(3, timeStamp);
            result = insertActors.executeUpdate();
        }

        catch (SQLException e)
        {
            e.printStackTrace();
        }


        return result;

    }

}
            
        %>
        
        <%
            int result = 0;
            String firstname = new String();
            String lastname = new String();
            
            if (request.getParameter("firstname") != null)
            {
                firstname = request.getParameter("firstname");
            }
            
            if (request.getParameter("lastname") != null)
            {
                lastname = request.getParameter("lastname");
            }
            
            Date date = new Date();
            Timestamp timeStamp = new Timestamp(date.getTime());
            
            Actor actor = new Actor();
            result = actor.setActors(firstname, lastname, timeStamp);

            %>
  
  
    <div id="container">
        <div class="copyright"><h2><br>Play series, movies, music, videos, and games for only $9.99/month.</h2>
        <button class="button2">View Plan</button></div>
        <div class="seriediv"></div>
        <div class="moviediv"></div>
        <div class="musicdiv"></div>
        <div class="gamediv"></div>
    </div>
  
  
  
  
  <img src="minion.png" alt="minion" id="minion">
  
  <footer>
    
    <div class="copyright"><p>&copy; 2016 Chill Computers.</p></div>
    
  </footer>

</body>
</html>
