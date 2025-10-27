<%@taglib prefix="strutsns" uri="/struts-tags"%>
<%@taglib prefix="strutsns_dojo" uri="/struts-dojo-tags" %>
<strutsns_dojo:head debug="true"/>
<html>
<head>
  
  <title>Charge Buddy - Sign In</title>
  
  <style>
    body {
      margin: 0;
      font-family:  sans-serif;
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

    .signup-container {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  padding: 40px 20px;
  max-width: 450px;
  margin: 0 auto;
  background-color: #f8f9fa;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

    .signup-image {
  width: 100px;
  margin-bottom: 20px;
  border-radius: 50%;
}

   .signup-form h2 {
  text-align: center;
  margin-bottom: 20px;
  color: #333;
}

    .login-form h2 {
      margin-bottom: 20px;
      color: #00274C;
      text-align: center;
    }

    .texttheme {
  width: 100%;
  padding: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
  font-size: 14px;
}

    .buttontheme {
  width: 100%;
  background-color: #28a745;
  color: white;
  padding: 12px;
  border: none;
  border-radius: 5px;
  font-size: 16px;
  cursor: pointer;
  margin-top: 10px;
}

    .buttontheme:hover {
  background-color: #218838;
}

    .login-form p {
      text-align: center;
      margin-top: 12px;
    }

   .signup-form p {
  text-align: center;
  margin-top: 10px;
  font-size: 14px;
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
    .form-group {
  width: 100%;
  margin-bottom: 15px;
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

    <%@ taglib prefix="strutsns" uri="/struts-tags" %>

<div class="signup-container">
  <img src="images/charging2.jpg" alt="Charging Image" class="signup-image" />
  
  <div class="signup-form">
    <h2>Sign Up</h2>
    
    <strutsns:form action="signupaction_logicalcode_action" method="post">

  <div class="form-group">
      <table>
         <tr> <td><strutsns:textfield name="customerId" label="Customer ID" cssClass="texttheme" /></td></tr>
      
   <td>  <strutsns:password name="password" label="Password" cssClass="texttheme" /></td>
  

  
    <strutsns:textfield name="fullName" label="Full Name" cssClass="texttheme" />
  

  
    <strutsns:textfield name="contact" label="Contact" cssClass="texttheme" />
  
  
    <strutsns_dojo:datetimepicker  label="DOB"  name="dOB" cssClass="texttheme"/>

  
    <strutsns:textfield name="emailId" label="Email ID" cssClass="texttheme" />
  
</table>
  
  
    <strutsns:submit value="Sign Up" cssClass="buttontheme" theme="simple"/>
      </table>
  </div>

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
