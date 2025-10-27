<%@taglib prefix="strutsns"  uri="/struts-tags"%>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Charge Buddy</title>
  <link rel="stylesheet" href="style.css">
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-image: url('images/charging4.jpeg');
      background-repeat: no-repeat;
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
      padding: 300px 20px 60px;
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

    .centered-image {
      display: block;
      margin: 0 auto;
      width: 300px;
      height: auto;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    footer {
      background-color: #222;
      color: #fff;
      padding: 10px;
      text-align: center;
    }

    .main-content {
      flex: 1;
    }
  </style>
</head>
<body>
  <div class="main-content">

    <!-- Header -->
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

    <!-- Hero Section -->
    <section class="hero">
      <h2 class="title">Charge Buddy</h2>
      <p class="tagline">Helping EV owners find the best time to charge</p>
    </section>
    <section class="project-info">
    <h3>MIDS Capstone Project Spring 2025</h3>
    <h2>Charge Buddy</h2>
    
  </section>

    <!-- Main 3-Column Layout -->
    <div style="display: flex; padding: 20px; background-color: #fff; gap: 20px;">
      
      <!-- Left Sidebar -->
      <aside style="width: 20%; background-color: #f5f5f5; padding: 20px; border-radius: 8px;">
        <h3 style="color: #00274C;">Team Members</h3>
        <ul style="list-style-type: none; padding: 0;">
          <li><a href="#">Denny Lehman</a></li>
          <li><a href="#">Varun Venkatesh</a></li>
          <li><a href="#">Elizabeth Willard</a></li>
        </ul>
      </aside>

      <!-- Center Content -->
      <main style="width: 60%; padding: 20px; background-color: #f9f9f9; border-radius: 8px;">
        <h2>Our Mission</h2>
        <p>Our mission is to revolutionize the electric vehicle charging experience through data. We strive to create a seamless charging experience that maximizes convenience and minimizes stress for EV drivers everywhere.</p>
        <p>By harnessing the power of predictive analytics and real-time data processing, we aim to solve one of the biggest pain points for electric vehicle adoption - finding available chargers when and where you need them.</p>

        <h2>Problem</h2>
        <p>The electric vehicle (EV) revolution is accelerating at an incredible pace, but it?s facing major speed bumps - the charging station availability crisis. Finding available EV chargers is the fastest growing problem for EV owners, especially the +800k drivers in California where the rate of new vehicles doubles that of new chargers.</p>

        <h2>Data</h2>
        <ul>
          <li>Feature - Grid: CAISO OASIS</li>
          <li>Feature - Time: Month, day, hour</li>
          <li>Feature - Weather: Meteostat, weather.gov</li>
          <li>Outcome - Availability: Adaptive Charging Network dataset</li>
        </ul>

        <h2>Model</h2>
        <p>We evaluated 3 models for predicting charger availability: Linear, Gradient-boosted Trees, and LSTM. We ultimately selected the LSTM neural network for its superior ability to learn from temporal sequences of data and handle non-linearity, even though it required significantly more training time.</p>
      
        <h2>Evaluation</h2>
        <p>
We evaluated our models using Root-Mean-Squared-Error (RMSE), the coefficient of determination (R2), and inference time as a proxy for app latency. Our baseline model was linear regression which yielded an RMSE of 0.193, R2 score of 0.53, and performed inference in 0.022 sec. The tuned LSTM model had an RMSE of 0.102, R2 of 0.872, and an inference time of 0.885 seconds. The best model was the XGBoost tree model, which yielded a RMSE of 0.101, goodness of fit of 0.875, and an inference time of 0.018 seconds.

We chose XGBoost because it had the best blend of low error and speed.

</p>
      </main>

      <!-- Right Sidebar -->
      <aside style="width: 20%; background-color: #f5f5f5; padding: 20px; border-radius: 8px;">
        <h3 style="color: #00274C;">People</h3>
        <ul style="list-style-type: none; padding: 0;">
          <li><a href="#">Faculty</a></li>
          <li><a href="#">Students</a></li>
          <li><a href="#">Staff</a></li>
          <li><a href="#">Visitors</a></li>
        </ul>
        <img src="images/chagebuddy5.jpeg" alt="Charge Buddy" class="centered-image" />
        <p style="text-align: center;">Charge Buddy - we help EV owners find when to charge</p>
        <!-- Chart Screenshot Image -->
<img src="images/chart-demo.png" alt="EV Charger Availability" class="centered-image" />
<p style="text-align: center; font-size: 14px; margin-top: 10px;">
  Charge Buddy - Helping EV Owners find the best time to charge
</p>

<!-- Embedded Video Section -->
<h3 style="color: #00274C;">Video</h3>
<div style="text-align: center;">
  <iframe width="100%" height="200" style="border-radius: 10px; border: 1px solid #ccc;"
    src="https://www.youtube.com/embed/VIDEO_ID"
    title="Charge Buddy demo" allowfullscreen></iframe>
</div>

      </aside>

    </div>

    <!-- Footer -->
    <footer>
      <p>2025 Buddy Charger. All Rights Reserved.</p>
      <p>Email: support@ChargeBuddy.org | Call: 1800-123-654.</p>
    </footer>

  </div>
</body>
</html>
