<%@taglib prefix="strutsns" uri="/struts-tags"%>
  <style>
    
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #fff;
      color: #333;
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

    .formtheme {
      width: 950px;
      height: 450px;
      background-color: #66ccff;
      font-size: 12px;
      margin-left: 300px;
      margin-top: 50px;
      border: outset;
    }

    .buttontheme {
      width: 300px;
      background-color: black;
      color: white;
      font-size: 16px;
      text-align: center;
      margin-left: 120px;
    }

    .texttheme {
      width: 300px;
      height: 30px;
      margin-left: 50px;
    }

    footer {
      background-color: #222;
      color: #fff;
      padding: 10px;
      text-align: center;
    }

    .loginimg {
      width: 300px;
      height: 200px;
      margin-left: 70px;
    }
  </style>
</head>

<body>
<title>Charge Buddy</title>

  <div class="main-content">
    <header>
      <div class="top-bar">
        <span>Charge Buddy</span>
        <nav>
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
        <h1><span class="uc">Charge Buddy</span> <span class="info">Information</span></h1>
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

    
    <strutsns:div cssClass="formtheme">
      <table style="background-color:#66ccff;">
        <tr>
          <td><img src="images/charging2.jpg" width="400px" height="450px"></td>
          <td>
                        <strutsns:form action="siginaction_logicalcode_action.action" method="post">
              <table align="center" cellspacing="3px" cellpadding="2px">
                <tr>
                  <td colspan="4"><img src="images/loginimg.jpg" class="loginimg"></td>
                </tr>
                <tr>
                  <td><strutsns:textfield label="Id" name="customerId" cssClass="texttheme" /></td>
                </tr>
                <tr>
                  <td><strutsns:password label="Password" name="password" cssClass="texttheme" /></td>
                </tr>
                <tr align="center">
                  <td colspan="2">
                    <strutsns:submit value="signin" theme="simple" cssClass="buttontheme" /><br>
                    new member <a href="signup.jsp" style="color:blue">signup</a>
                  </td>
                </tr>
              </table>
            </strutsns:form>
          </td>
        </tr>
      </table>
    </strutsns:div>
  </div>

  
  <footer>
    <p>2025 Buddy Charger. All Rights Reserved.</p>
    <p>Email: support@ChargeBuddy.org | Call: 1800-123-654.</p>
  </footer>

</body>
</html>
