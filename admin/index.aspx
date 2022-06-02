<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SunRise.admin.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
  <title>SUN RISE ADMIN</title>    
    <link rel="stylesheet" href="css/style.css"/>
    <style type="text/css">
        .auto-style1 {
            left: 50%;
            position: absolute;
            top: 50%;
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            width: 367px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="clouds">
	<div class="cloud x1"></div>
	<!-- Time for multiple clouds to dance around -->
	<div class="cloud x2"></div>
	<div class="cloud x3"></div>
	<div class="cloud x4"></div>
	<div class="cloud x5"></div>
</div>
 <div class="auto-style1">
      <div id="login"  >     
              <div>
             <label>UserName</label>
             <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
              </div>
              <div>
               <label>PassWord</label>
               <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="167px"></asp:TextBox>
              </div>
          <div>

              <asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click" Text="Login" Width="198px" />

          </div>
                 
      </div> <!-- end login -->
    </div>
    <div class="bottom">  <h3><a href="../index.aspx">SUN RISE HOMEPAGE</a></h3></div>
    

    </form>
</body>
</html>
