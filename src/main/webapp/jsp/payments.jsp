<!DOCTYPE html>

<html>
  <head>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="https://hpneo.github.io/gmaps/gmaps.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="../dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../bower_components/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>


	
<link rel="stylesheet" type="text/css" href="../examples.css" />
    <meta charset="utf-8">
    <title>Verizon Quick Pay</title>    
	<script>
$(document).ready(function() {
    $('#formPay').bootstrapValidator({
        container: '#messages',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            txtMobNo: {
                validators: {
                    notEmpty: {
                        message: 'Please enter landline / mobile number'
                    }
                }
            },
            txtEmail: {
                validators: {
                    notEmpty: {
                        message: 'The email address is required and cannot be empty'
                    }
                  
                }
            },
            txtAmt: {
                validators: {
                    notEmpty: {
                        message: 'Please enter amount to pay'
                    }
                   
                }
            }
        }
    });
});

</script>
</head>
  <body>    
	
    
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../jsp/login.jsp">VzCommunicator - Quick Pay</a>
            </div>
            <!-- /.navbar-header -->

           
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                       <!--  <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            /input-group 
                        </li>-->
                        <li>
                            <a href="../jsp/login.jsp"><i class="fa fa-table fa-fw"></i> Dashboard</a>
                        </li>
                        
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
	  <div id="page-wrapper">
             <div>                
                  <h1>Quick Pay</h1>                
                <!-- /.col-lg-12 -->
            </div>
            
			   <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                  <form role="form" name="formPay" id="formPay" method="post" action="../searchController?type=payments">
                                  <% if(request.getAttribute("success")!=null&&request.getAttribute("success").equals("mobilesub")){ %>
                                  
                                  
                                    	<Label id="lblMessage" ><font color="green">We have received your complaint request (Request Id : #4355678), our representative will contact you shortly. !</font></Label>
                                    	<br/>
                                    	
                                    <%} %>	
                                        <div class="form-group">
                                          <label>Enter Landline (or) Mobile Number </label>
                                            <input class="form-control" name="txtMobNo">
                                        </div>
                                          <div class="form-group">
                                            <label>Enter Email ID</label>
											<span>
												 <input class="form-control" name="txtEmail">
												
											</span>
									
                                        </div>
                                         
                                         <div class="form-group">
                                            <label>Amount to pay</label>
                                              <input class="form-control" name="txtAmt"> <a href="#">Want to know your bill amount?</a>
                                        </div>
                                        
                                               <button type="submit" class="btn btn-default" >Pay >></button>                                        
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                
                            </div>
                            <!-- /.row (nested) -->
                        </div>
        </div>
	
  </body>

	
</html>
