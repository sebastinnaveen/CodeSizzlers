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
<link rel="stylesheet" type="text/css" href="examples.css" />
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>

    <meta charset="utf-8">
    <title>Verizon Complaints</title>    
  </head>
  <body>    
	<script>
		localStorage.clear();

		var Tech1 = {};
		Tech1.Name = "Sathish";
		Tech1.Location = "Chromepet,india,chennai";
		Tech1.Phone = "9840383885";
		Tech1.Latitude = "12.9531946";
		Tech1.Longitude = "80.1416008";

		var Tech2 = {};
		Tech2.Name = "Ramkumar";
		Tech2.Location = "Vadapalani,india,chennai";
		Tech2.Phone = "9840384885";
		Tech2.Latitude = "13.0497";
		Tech2.Longitude = "80.2126";

		var Customer1 = {};
		Customer1.Name = "Naveen";
		Customer1.Location = "Tambaram,india,chennai";
		Customer1.Phone = "9840384885";


		localStorage.setItem ('Tech1', JSON.stringify(Tech1));
		localStorage.setItem ('Tech2', JSON.stringify(Tech2));
		localStorage.setItem ('Customer1', JSON.stringify(Customer1));
		
		function clickMap()
		{
			if(document.getElementById("txtSubid").value == '')
			{
			   alert('Please enter the Subscription ID');
			   document.getElementById("txtSubid").focus();
			   return false;
			}	
			
			if(document.getElementById("lblMessage").style.display == 'none')
			{				
				setTimeout(loadiFrame(), 5000);
			}
			
			/*if(document.getElementById("iframeMap").style.display == 'none')
			{
				document.getElementById("iframeMap").style.display = 'block';
				document.getElementById("iframeMap").src = "Maps.HTML";
			}	*/		
		}
		
		function clickbtn()
		{			
			if(document.getElementById("lblMessage").style.display == 'none')
			{
				document.getElementById("lblMessage").style.display = 'block';			
			}
			return false;
		}
		
		function mapLoadFunction(id)
		{ //alert(id);
			//document.getElementById("iframeMap").src = "GetTime.html";
			if(id == 'Fios Tv'){
			document.getElementById("map1").style.display = 'block';
			document.getElementById("map2").style.display = 'none';
			}
			else if(id == 'Fios Phone'){
			document.getElementById("map2").style.display = 'block';
			document.getElementById("map1").style.display = 'none';
			}
			
			
		}
		
	</script>
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
            acctNo: {
                validators: {
                    notEmpty: {
                        message: 'Please enter valid account number'
                    }
                }
            },
            issue: {
                validators: {
                    notEmpty: {
                        message: 'Issue is required and cannot be empty'
                    }
                  
                }
            }
        }
    });
});

</script>
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../jsp/login.jsp">VzCommunicator - Complaints</a>
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
                  <h1>Complaints</h1>                
                <!-- /.col-lg-12 -->
            </div>
            
			   <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" name="complaints" id="complaints" method="post" action="../searchController?type=complaints">
                                    <% if(request.getAttribute("success")!=null&&request.getAttribute("success").equals("mobilesub")){ %>
                                    	<Label id="lblMessage" style="display:none;"><font color="green">We have received your complaint request (Request Id : #4355678), our representative will contact you shortly. !</font></Label>
                                    	<br/>
                                    	  <%} %>	
                                        <div class="form-group">
                                        	<a href="../jsp/ComplaintsInbox.html">Inbox</a><br/><br/>
                                            <label>Enter your Account / Mobile Number</label>
                                            <input class="form-control" id="acctNo">
                                        </div>
                                          <div class="form-group">
                                            <legend><b>My Complaint Involves...</b></legend><br/>
											<span>
												<input id="Field1" type="radio" name='Comp1' value="FIOS TV - Installation"	checked="checked"/>
												<label><span style="font-family:'verdana';font-size:12px;">FIOS TV - Installation</span></label>
											</span>
											<br/>
											<span>
												<input id="Field2" type="radio"  name='Comp1' value="FIOS TV - Setup Box"/>
												<label><span style="font-family:'verdana';font-size:12px;">FIOS - Internet</span></label>
											</span>
											<br/>
											<span>
												<input id="Field3" type="radio" name='Comp1' value="FIOS TV - Cable Issue"/>
												<label><span style="font-family:'verdana';font-size:12px;">FIOS - Phone</span></label>
											</span>
											<br/>
											<span>
												<input id="Field4" type="radio" name='Comp1' value="Others"/>
												<label><span style="font-family:'verdana';font-size:12px;">Others</span></label>
											</span>
											<br/><br/>
                                        </div>
                                          <div class="form-group" style="display:none;">
                                            <label>State of Residence</label>
                                            <select onchange="mapLoadFunction(this.value)">
                                                <option >Alabama</option>
                                                <option >Alaska</option>
                                                <option>Arizona</option>
                                               <option>Arkansas</option>
                                               <option>California</option>
                                               <option>Colorado</option>
                                            </select>
                                        </div>
                                         <div class="form-group">
                                            <label>Issue</label>
                                            <textarea class="form-control" rows="3" id="issue"></textarea>
                                        </div>
                                        
                                               <button type="submit" class="btn btn-default" >Submit Complaint >></button>                                        
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                
                            </div>
                            <!-- /.row (nested) -->
                        </div>
        </div>
	
  </body>

	
</html>
