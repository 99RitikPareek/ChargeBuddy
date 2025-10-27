<%@taglib prefix="strutsns"  uri="/struts-tags"%>
<style>
body {
  margin: 0;
  font-family: Arial, sans-serif;
  background-color: #fff;
  color: #333;
}

.top-bar {
  background: #00274C;
  color: white;
  padding: 5px 15px;
  display: flex;
  justify-content: space-between;
  font-size: 14px;
}

.top-bar nav a {
  color: white;
  margin-left: 15px;
  text-decoration: none;
}

.main-header {
  padding: 20px 15px;
  background-color: #f4f4f4;
  border-bottom: 1px solid #ccc;
}

.main-header h1 {
  margin: 0;
  font-size: 28px;
}

.uc {
  font-weight: bold;
}

.info {
  font-weight: normal;
}

.nav-menu {
  list-style: none;
  padding: 10px 0 0 0;
  display: flex;
  gap: 20px;
  flex-wrap: wrap;
}

.nav-menu li a {
  text-decoration: none;
  color: #000;
  font-weight: bold;
}

.hero {
  text-align: center;
  padding: 40px 20px;
}

.logo {
  max-width: 300px;
  height: auto;
}

.title {
  font-size: 48px;
  color: #2E8B57;
  margin: 20px 0 10px;
}

.tagline {
  font-size: 20px;
  color: #3CB043;
  font-weight: bold;
}

.project-info {
  padding: 20px;
  background-color: #f9f9f9;
  border-top: 2px solid #eee;
}
.formtheme{
            width:950px;
            height: 450px;
            background-color:rgba(255,255,255,0.9);
            box-shadow: 5px 5px 5px black;
            font-size:12px;
            margin-left:300px;
            border-radius: 30px;
            margin-top:-50px;
        }
        .buttontheme{
            width:300px;
            background-color:black;
            color:white;
            font-size:16px;
            text-align: center;
            margin-left:70px;
        }
        .texttheme{
                width:300px;
                height: 30px;
        }
        footer{
            background-color: #222;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
</style>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Charge Buddy</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <div class="top-bar">
      <span>Charge Buddy</span>
      <nav>
<!--        <a href="#">Give</a>
        <a href="#">Volunteer</a>
        <a href="#">Contact Us</a>
        <a href="#">Alumni</a>
        <a href="#">Log in</a>-->
                <strutsns:a href="homeurl.action">Home</strutsns:a>
                <strutsns:a href="abouturl.action">About</strutsns:a>
                <strutsns:a href="processurl.action">Process</strutsns:a>
                <strutsns:a href="signinurl.action">Signin</strutsns:a>
                <strutsns:a href="signupurl.action">Signup</strutsns:a>
                <strutsns:a href="contacturl.action">Contact</strutsns:a>
                <a href="mailto:">Query</a>
      </nav>
    </div>
    <div class="main-header">
      <h1><span class="uc">Charge Buddy</span> <span class="info"> Information</span></h1>
      <ul class="nav-menu">
        <li><a href="#">ABOUT</a></li>
        <li><a href="#">PROGRAMS</a></li>
        <li><a href="#">SERVICES</a></li>
        <li><a href="#">PEOPLE</a></li>
        <li><a href="#">RESEARCH</a></li>
        <li><a href="#">CAREERS</a></li>
        <li><a href="#">NEWS</a></li>
        <li><a href="#">EVENTS</a></li>
      </ul>
    </div>
  </header>

  <section class="hero">
    <img src="battery-car.png" alt="Charge Buddy Logo" class="logo" />
    <h2 class="title">Charge Buddy</h2>
    <p class="tagline">Helping EV owners find the best time to charge</p>
  </section>

<!--  <section class="project-info">
    <h3>MIDS Capstone Project Spring 2025</h3>
    <h2>Charge Buddy</h2>
  </section>-->
<strutsns:div cssClass="formtheme">
                    
                    
                    <table>
                        <tr>
<!--                        <hr> Create Account </hr>-->
                            <td><img src="images/charging2.jpg" width="300px" height="450px"></td>
                            <td>
                                
      <strutsns:form  action="adminsettingaction_logicalcode_action.action" method="post" 
                enctype="multipart/form-data"  >
    <table align="center" cellspacing="3px" cellpadding="2px">
    <tr><td><strutsns:textfield label="Old Password"  name="oldPassword" cssClass="texttheme"/></td></tr>
    <tr><td><strutsns:password label=" New Password"  name="newPassword" cssClass="texttheme"/></td></tr>
    <tr><td><strutsns:textfield label="Confirm New Password"  name="confirmNewPassword" cssClass="texttheme"/></td></tr>
    <tr align="center"><td colspan="2"><strutsns:submit value="CHANGE" theme="simple" cssClass="buttontheme"/><br>
        Already have an account click on login<a href="signin.jsp" style="color:blue">sign in </td></tr>
    </table>
</strutsns:form>
</td>
                        </tr>
                        
                    </table>
                </strutsns:div>

<footer>
    <p>2025 Buddy Charger.All Rights Reserved.</p>
    <p>   Email:support@ChargeBuddy.org|call: 1800-123-654.</p>
</footer>

</body>
</html>

