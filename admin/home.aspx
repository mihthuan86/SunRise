<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="SunRise.admin.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administrator	</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.aspx"> <% Response.Write(user);%> </a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="usersetting.aspx"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="settings.aspx"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.aspx"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a class="active-menu" href="home.aspx"><i class="fa fa-dashboard"></i> Status</a>
                    </li>
                    <li>
                        <a href="messages.aspx"><i class="fa fa-desktop"></i> News Letters</a>
                    </li>
					<li>
                        <a href="roombook.aspx"><i class="fa fa-bar-chart-o"></i> Room Booking</a>
                    </li>
                    <li>
                        <a href="payment.aspx"><i class="fa fa-qrcode"></i> Payment</a>
                    </li>
                    <li>
                        <a  href="profit.aspx"><i class="fa fa-qrcode"></i> Profit</a>
                    </li>
                    <li>
                        <a href="logout.aspx"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>             
					</ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Status <small>Room Booking </small>
                        </h1>
                    </div>
                </div>
                <!-- /. ROW  -->              
					<div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            
                        </div>
                        <div class="panel-body">
                            <div class="panel-group" id="accordion">
							
							<div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
											<button class="btn btn-default" type="button">
												 New Room Bookings  <span class="badge"><% Response.Write(tb_phongmoi.Rows.Count); %></span>
											</button>
											</a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                        <div class="panel-body">
                                           <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tên</th>
                                            <th>SĐT</th>
                                            <th>CMND/CCCD</th>
											<th>Email</th>											
											<th>Phòng</th>
											<th>Ngày Đến</th>
											<th>Ngày Trả</th>											
											<th>Trạng thái</th>
											<th>Xử lí</th>										
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
									<%
                                        string s;
                                        for(int i = 0; i < tb_phongmoi.Rows.Count; i++)
                                        {
                                            
                                            s="<tr>"+
												"<th>"+tb_phongmoi.Rows[i]["ID_Dat"]+"</th>"+
												"<th>"+tb_phongmoi.Rows[i]["Ho"]+" "+tb_phongmoi.Rows[i]["Ten"]+"</th>"+
												"<th>"+tb_phongmoi.Rows[i]["Sdt"]+"</th>"+
												"<th>"+tb_phongmoi.Rows[i]["DinhDanh"]+"</th>"+
												"<th>"+tb_phongmoi.Rows[i]["Email"]+"</th>"+
												"<th>"+tb_phongmoi.Rows[i]["ID_LoaiP"]+"</th>"+
												"<th>"+String.Format("{0:dd/MM/yyyy}",tb_phongmoi.Rows[i]["NgayDen"])+"</th>"+
												"<th>"+String.Format("{0:dd/MM/yyyy}",tb_phongmoi.Rows[i]["NgayTra"])+"</th>"+
												"<th>Chưa xử lí</th>"+																																			
												"<th><a href='roombook.aspx?rbid="+tb_phongmoi.Rows[i]["ID_Dat"]+" ' class='btn btn-primary'>Action</a></th>"+
												"</tr>";
                                            Response.Write(s);
                                        }
                                        %>
                                        
                                    </tbody>
                                </table>
								
                            </div>
                        </div>
                    </div>
                      <!-- End  Basic Table  --> 
                                        </div>
                                    </div>
                                </div>
								
                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">
											<button class="btn btn-primary" type="button">
												 Booked Rooms  <span class="badge"><% Response.Write(tb_phongxl.Rows.Count);%></span>
											</button>
											
											</a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
                                        <div class="panel-body">
										<%
                                            string t;
                                            for(int i = 0; i < tb_phongxl.Rows.Count; i++) {



                                                t ="<div class='col-md-3 col-sm-12 col-xs-12'>"+
                                                       "<div class='panel panel-primary text-center no-boder bg-color-blue'>"+
                                            "<div class='panel-body'>"+
                                                "<i class='fa fa-users fa-5x'></i>"+
                                                "<h3>"+tb_phongmoi.Rows[i]["Ho"]+" "+tb_phongmoi.Rows[i]["Ten"]+"</h3>"+
                                            "</div>"+
                                            "<div class='panel-footer back-footer-blue'>"+
                                            "<a href=show.aspx?rbid="+tb_phongxl.Rows[i]["ID_Dat"]+"><button  class='btn btn-primary btn' data-toggle='modal' data-target='#myModal'>"+
                                                "Show"+
                                                "</button></a>"+               
                                                "</div>"+
                                                "</div>	"+
                                                "</div>";
                                                Response.Write(t);
                                            }
                                       %>										                                         
										</div>
										
                                    </div>
									
                                </div>
                                
                                        </div>
                                    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                <!-- /. ROW  -->
				
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
    <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>
</body>
</html>
