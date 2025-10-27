<%@taglib prefix="strutsns" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Charge Buddy - Sign In</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background-color: #f4f4f4;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    .main-content {
      flex: 1;
    }

    .top-bar {
      background: #00274C;
      color: white;
      padding: 10px 30px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .top-bar nav a {
      color: white;
      margin-left: 20px;
      text-decoration: none;
      font-weight: bold;
    }

    .top-bar nav a:hover {
      text-decoration: underline;
    }

    .main-header {
      padding: 20px 30px;
      background-color: #eaeaea;
      border-bottom: 1px solid #ccc;
    }

    .main-header h1 {
      margin: 0;
      font-size: 28px;
      color: #00274C;
    }

    .login-container {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 40px;
      gap: 40px;
      flex-wrap: wrap;
      background-color: white;
      margin: 40px auto;
      width: 90%;
      max-width: 950px;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    .login-image {
      max-width: 400px;
      border-radius: 12px;
    }

    .login-form {
      width: 100%;
      max-width: 360px;
    }

    .login-form h2 {
      margin-bottom: 20px;
      color: #00274C;
      text-align: center;
    }

    .texttheme {
      width: 100%;
      padding: 12px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 16px;
    }

    .buttontheme {
      width: 100%;
      padding: 12px;
      background-color: #00274C;
      color: white;
      border: none;
      font-size: 16px;
      border-radius: 6px;
      cursor: pointer;
      text-align: center;
    }

    .login-form p {
      text-align: center;
      margin-top: 12px;
    }

    .login-form a {
      color: #007BFF;
      text-decoration: none;
    }

    .loginimg {
      width: 300px;
      height: 200px;
      margin-left: 30px;
      border-radius: 10px;
    }

    footer {
      background-color: #222;
      color: white;
      text-align: center;
      padding: 15px;
      margin-top: auto;
    }
  </style>
</head>
<body>
  <div class="main-content">
    <!-- Top Header -->
    <div class="top-bar">
      <span><strong>Charge Buddy</strong></span>
      <nav>
        <strutsns:a href="homeurl.action">Home</strutsns:a>
        <strutsns:a href="abouturl.action">About</strutsns:a>
        <strutsns:a href="processurl.action">Process</strutsns:a>
        <strutsns:a href="signinurl.action">Signin</strutsns:a>
        <strutsns:a href="signupurl.action">Signup</strutsns:a>
        <strutsns:a href="contacturl.action">Contact</strutsns:a>
        
        <a href="mailto:support@ChargeBuddy.org">Query</a>
      </nav>
    </div>

    <div class="main-header">
      <h1>Charge Buddy Information</h1>
    </div>

    <div class="login-container">
      <img src="images/charging2.jpg" alt="Charging Image" class="login-image" />
      <div class="login-form">
        <h2>Sign In</h2>
        <strutsns:form action="adminsigninaction_logicalcode_action.action" method="post">

<!--          <img src="images/loginimg.jpg" class="loginimg" alt="Login Icon"><br><br>-->

          <strutsns:textfield name="adminId" theme="simple" cssClass="texttheme">
            <strutsns:param name="placeholder">Enter ID</strutsns:param>
          </strutsns:textfield>

          <strutsns:password name="adminPassword" theme="simple" cssClass="texttheme">
  <strutsns:param name="placeholder">Enter Password</strutsns:param>
</strutsns:password>


          <strutsns:submit value="Sign In" cssClass="buttontheme" theme="simple"/>

          <p>New member? <a href="signup.jsp">Signup</a></p>
        </strutsns:form>
      </div>
    </div>
  </div>

  <footer>
    <p>2025 Buddy Charger. All Rights Reserved.</p>
    <p>Email: support@ChargeBuddy.org | Call: 1800-123-654.</p>
  </footer>
</body>
</html>
