<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage1.aspx.cs" Inherits="GroupProject.Homepage1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>VOLTEE
    </title>

    <!-- CSS file -->

    <link href="StyleSheet1.css" rel="stylesheet" />

</head>

<body>

    <form id="form1" runat="server">

        <div class="page" id="page">

            <!-- Left side - Lamp -->
            <div class="lamp-area">
                <!-- Lamp shade -->
                <div class="lamp-shade">
                    <!-- Bulb -->
                    <div class="bulb">
                    </div>
                </div>

                <!-- Lamp stand -->

                <div class="lamp-stand">
                </div>

                <!-- Lamp base -->

                <div class="lamp-base">
                </div>

                <!-- Pull string -->

                <div class="string-area">

                    <div class="string">
                    </div>

                    <div class="pull-ball" id="pullBall">
                    </div>

                    <!-- Pull instruction -->

                    <p class="pull-text">
                        Pull the cord 
                    </p>
                </div>
            </div>

            <!-- Right side - Login -->

            <div class="login-card" id="loginCard">

                <h1>Welcome to

                <span>VOLTEE

                </span>

                </h1>

                <p>
                    Start your energy journey today
                </p>

                <!-- Login button -->

                <asp:Button
                    ID="btnLogin"
                    runat="server"
                    Text="Login"
                    CssClass="login-btn"
                    OnClientClick="login(); return false;" />

                <!-- Sign up button -->

                <asp:Button
                    ID="btnSignup"
                    runat="server"
                    Text="Sign Up"
                    CssClass="signup-btn"
                    OnClientClick="signup(); return false;" />

                <!-- OR -->

                <div class="divider">

                    <span></span>

                    OR

                <span></span>
                </div>

                <!-- Guest user -->

                <button
                    type="button"
                    class="guest-btn"
                    onclick="guest()">
                    Continue without account
                </button>
            </div>

        </div>

    </form>

    <!-- JavaScript file -->

    <script src="JavaScript.js"></script>

</body>

</html>
