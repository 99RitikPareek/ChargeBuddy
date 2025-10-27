
<%@taglib prefix="strutsns"  uri="/struts-tags"%>
<style>
body {
  margin:0;
  font-family: Arial, sans-serif;
  background-image:url('images/charging4.jpeg');
  background-repeat:no-repeat;
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
      background-image: url('images/charging4.jpeg');
      background-repeat: no-repeat;
      background-size: contain;
      background-position: center top;
      padding: 300px 20px 60px; /* Top padding to give space for image */
      text-align: center;
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
footer {
      background-color: #222;
      color: #fff;
      padding: 10px;
      text-align: center;
    }
        .centered-image {
  display: block;
  margin: 0 auto;
  width: 300px; /* Or use: max-width: 100%; */
  height: auto;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}
.main-content {
      flex: 1;
    }

</style>

<html lang="en">
<head>

  <title>Charge Buddy</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="main-content">
  <header>
      
    <div class="top-bar">
      <span>Charge Buddy</span>
      <nav>
<!--        <a href="#">Give</a>
        <a href="#">Volunteer</a>
        <a href="#">Contact Us</a>
        <a href="#">Alumni</a>
        <a href="#">Log in</a>-->
                <strutsns:a href="homeurl.action">HOME</strutsns:a>
                <strutsns:a href="abouturl.action">ABOUT</strutsns:a>
                <strutsns:a href="processurl.action">PROCESS</strutsns:a>
                <strutsns:a href="signinurl.action">SIGNIN</strutsns:a>
                <strutsns:a href="signupurl.action">LOGOUT</strutsns:a>
                <strutsns:a href="contacturl.action">CONTACT</strutsns:a>
                <a href="mailto:">QUERY</a>
      </nav>
    </div>
    <div class="main-header">
      <h1><span class="uc">Charge Buddy</span> <span class="info"> Information</span></h1>
      <ul class="nav-menu">
        <li><a href="#">ABOUT</a></li>
        <li><a href="complainurl">COMPLAIN</a></li>
        <li><a href="#">SERVICES</a></li>
        <li><a href="settingurl">SETTING</a></li>
        <li><a href="requesturl">REQUEST</a></li>
        <li><a href="feedbackurl">FEEDBACK</a></li>
        <li><a href="#">NEWS</a></li>
        <li><a href="#">EVENTS</a></li>
      </ul>
    </div>
  </header>

  <section class="hero">
<!--    <img src="charging4.jpeg" alt="Charge Buddy Logo" class="logo" />-->
    <h2 class="title">Charge Buddy</h2>
    <p class="tagline">Helping EV owners find the best time to charge</p>
  </section>

  <section class="project-info">
    <h3>MIDS Capstone Project Spring 2025</h3>
    <h2>Charge Buddy</h2>
  </section>
    </div>
   <footer>
    <p>2025 Buddy Charger.All Rights Reserved.</p>
    <p>   Email:support@ChargeBuddy.org|call: 1800-123-654.</p>
</footer>
                
</body>
</html>

