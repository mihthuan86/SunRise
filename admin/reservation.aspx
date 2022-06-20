<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reservation.aspx.cs" Inherits="SunRise.admin.reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>RESERVATION SUNRISE HOTEL</title>
	<!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
     <!-- Google Fonts-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />    
</head>
<body>
    <form id="form1" runat="server" method="post">
   <div id="wrapper">
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <a  href="../index.aspx"><i class="fa fa-home"></i> Homepage</a>
                    </li>                   
					</ul>
            </div>
        </nav>       
        <div id="page-wrapper" >
            <div id="page-inner">
			 <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            RESERVATION <small></small>
                        </h1>
                    </div>
                </div> 
                 
                                 
            <div class="row">
                
                <div class="col-md-5 col-sm-5">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            PERSONAL INFORMATION
                        </div>
                        <div class="panel-body">
                            <div class="form-group">                                           
                              </div>
							  <div class="form-group">
                                            <label>Họ</label>                                
                                            <asp:TextBox ID="txt_ho" runat="server"></asp:TextBox>
                                            
                               </div>
							   <div class="form-group">
                                            <label>Tên</label>
                                            <asp:TextBox ID="txt_ten" runat="server"></asp:TextBox>                              
                               </div>
                               <div class="form-group">
                                            <label>Số ĐT</label>
                                            <asp:TextBox ID="txt_sodt" runat="server" TextMode="Phone"></asp:TextBox>                                      
                               </div>
                               <div class="form-group">
                                            <label>Số CMND/CCCD</label>
                                            <asp:TextBox ID="txt_id" runat="server" TextMode="Number"></asp:TextBox>                                      
                               </div>	
							   <div class="form-group">
                                            <label>Email</label>
                                            <asp:TextBox ID="txt_email" runat="server" TextMode="Email"></asp:TextBox>                                  
                               </div>							   																
							    <div class="form-group">
                                            <label>So Luong</label>
                                            <asp:TextBox ID="txt_soluong" runat="server" TextMode="Number"></asp:TextBox>                                  
                               </div>						   
                        </div>                       
                    </div>
                </div>               
                <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            RESERVATION INFORMATION
                                         </div>
                        <div class="panel-body">
								<div class="form-group">
                                            <label>Loại Phòng</label>
                                            <asp:DropDownList ID="ddl_troom" runat="server"></asp:DropDownList>
                              </div>
							  <div class="form-group">
                                            <label>Loại Giường</label>
                                            <asp:DropDownList ID="ddl_loaigiuong" runat="server">
                                                <asp:ListItem Value="Single">Đơn</asp:ListItem>
                                                <asp:ListItem Value="Double">Đôi</asp:ListItem>
                                                <asp:ListItem Value="Triple">Ba</asp:ListItem>
                                            </asp:DropDownList>

                              </div>							  						  
							  <div class="form-group">
                                            <label>Check-In</label>
                                            <asp:TextBox ID="txt_dayin" runat="server" TextMode="Date"></asp:TextBox>                                                                          
                               </div>
							   <div class="form-group">
                                            <label>Check-Out</label>
                                            <asp:TextBox ID="txt_dayout" runat="server" TextMode="Date"></asp:TextBox>                                  
                                                                                      
                               </div>
                            <div class="form-group">
                                            <label>Yêu cầu khác</label>
                                            <asp:TextBox ID="txt_yeucau" runat="server" TextMode="MultiLine"></asp:TextBox>                                                                                                                    
                               </div>
                       </div>
                        
                    </div>
                </div>
                    <div class="col-md-12 col-sm-12">
                    <div class="well" style="text-align:center">
                        
                        <asp:Button ID="btn_DatPhong" runat="server" BackColor="#3366FF" Font-Bold="True" Font-Size="Medium" ForeColor="Black" OnClick="btn_DatPhong_Click" Text="Đặt phòng" Width="165px" />
                        
                        </div>
                     </div>
    </form>
</body>
</html>
