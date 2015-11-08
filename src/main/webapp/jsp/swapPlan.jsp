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
    <title>SwapPlan</title>    
  </head>
  <body>  
  <script>
$(document).ready(function() {
    $('#swapPlan').bootstrapValidator({
        container: '#messages',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            
            txtEmail: {
                validators: {
                    notEmpty: {
                        message: 'The email address is required and cannot be empty'
                    }
                  
                }
            }
        }
    });
});

</script>  
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
		
		function drpOnChange(drpvalue)
		{			
			if(drpvalue==1)
			{
				document.getElementById("divPlans").style.display = "block";
				document.getElementById("fiosTV").style.display = "block";
				document.getElementById("fiosInternet").style.display = "none";
				document.getElementById("fiosPhone").style.display = "none";
				document.getElementById("VzWireless").style.display = "none";
			}
			else if(drpvalue==2)
			{
				document.getElementById("divPlans").style.display = "block";				
				document.getElementById("fiosInternet").style.display = "block";
				document.getElementById("fiosPhone").style.display = "none";
				document.getElementById("VzWireless").style.display = "none";
				document.getElementById("fiosTV").style.display = "none";	
				
			}
			else if (drpvalue==3)
			{
				document.getElementById("divPlans").style.display = "block";				
				document.getElementById("fiosInternet").style.display = "none";
				document.getElementById("fiosPhone").style.display = "block";
				document.getElementById("VzWireless").style.display = "none";
				document.getElementById("fiosTV").style.display = "none";	
			}
			else if(drpvalue==4)
			{
				document.getElementById("divPlans").style.display = "block";				
				document.getElementById("fiosInternet").style.display = "none";
				document.getElementById("fiosPhone").style.display = "none";
				document.getElementById("VzWireless").style.display = "block";
				document.getElementById("fiosTV").style.display = "none";	
			}
			else
			{
				document.getElementById("divPlans").style.display = "none";				
				document.getElementById("fiosInternet").style.display = "none";
				document.getElementById("fiosPhone").style.display = "none";
				document.getElementById("VzWireless").style.display = "none";
				document.getElementById("fiosTV").style.display = "none";
			}
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
    
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../jsp/login.jsp">Vz Communicator - Easy Plan Swap</a>
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
            <div>                
                    <h1>Easy Plan Swap</h1>                
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
             <form role="form" name="swapPlan" id="swapPlan" method="post" action="../searchController?type=swapplan">
            
            <div>
			    <div>
			    <% if(request.getAttribute("success")!=null&&request.getAttribute("success").equals("mobilesub")){ %>
			    	<Label id="lblMessage" ><font color="green">Your selected new plan will be effective from the next billing cycle. Any clarifications please contact "#201-888-4521". !</font></Label>
                    <br/>
                     <%} %>	
					<legend><span style="font-family:'verdana';font-size:12px;"><b>Current Plan : "My Verizon Plan - $80/month"</b></span></legend><br/><br/>
					<label><b><span style="font-family:'verdana';font-size:12px;">Choose Product Category to Swap</span></b></label>					
						<select id="Field7" onchange="return drpOnChange(this.value);">
							<option	value="--Select--" selected>--Select--</option>
							<option	value="1">FIOS TV</option>
							<option	value="2">FIOS Internet</option>
							<option	value="3">FIOS Phone</option>
							<option	value="4">Wireless</option>
						</select><br/><br/>
					<div id="divPlans" style="display:none;">						
					<legend><span style="font-family:'verdana';font-size:12px;"><b>Swap to the best available plans :</b></span></legend><br/>
					<div id="fiosTV" style="display:none;">
						<span>
							<input id="Field1" type="radio" name="fiostv" value="FIOS TV - Pack 1"/>
							<label><span style="font-family:'verdana';font-size:12px;">FIOS TV - Plan 1</span></label>
						</span>
						<br/>
						<span>
							<input id="Field2" type="radio" name="fiostv" value="FIOS TV - Pack 2"/>
							<label><span style="font-family:'verdana';font-size:12px;">FIOS TV - Plan 2</span></label>
						</span>
						<br/>
					</div>
					<div id="fiosInternet" style="display:none;">
						<span>
							<input id="Field3" type="radio" name="fiosInter" value="FIOS Internet - Pack 1"/>
							<label><span style="font-family:'verdana';font-size:12px;">FIOS Internet - Plan 1</span></label>
						</span>
						<br/>
						<span>
							<input id="Field4" type="radio" name="fiosInter" value="FIOS Internet - Pack 2"/>
							<label><span style="font-family:'verdana';font-size:12px;">FIOS Internet - Plan 2</span></label>
						</span>
						<br/>
					</div>
					<div id="fiosPhone" style="display:none;">
						<span>
							<input id="Field5" type="radio" name="fiosPhone" value="FIOS TV - Cable Issue"/>
							<label><span style="font-family:'verdana';font-size:12px;">FIOS Phone - Plan 1</span></label>
						</span>
						<br/>
					</div>
					<div id="VzWireless" style="display:none;">
						<span>
							<input id="Field6" type="radio" name="vzw" value="Vz Wireless S - $20/Month"/>
							<label><span style="font-family:'verdana';font-size:12px;">Vz Wireless S - $20/Month</span></label>
						</span>
						<br/>
						<span>
							<input id="Field7" type="radio" name="vzw" value="FIOS TV - Cable Issue"/>
							<label><span style="font-family:'verdana';font-size:12px;">Vz Wireless L - $40/Month</span></label>
						</span>
						<br/>
						<span>
							<input id="Field8" type="radio" name="vzw" value="Vz Wireless L - $60/Month"/>
							<label><span style="font-family:'verdana';font-size:12px;">Vz Wireless XL - $60/Month</span></label>
						</span>										
						<br/>
					</div>
				  </div>
				  <br/>
					<label class="desc" id="title4" for="Field9">
						<span style="font-family:'verdana';font-size:12px;"><b>Please enter your email if you'd like us to follow up with you.</b></span>
					</label>
					<div>
						 <input class="form-control" name="txtEmail">
					</div>
					<br/>
					<input id="saveForm" name="saveForm" class="btTxt submit" type="submit"  value="Submit Request >>" />
				</div>                    
                        
                        
             </div>
             </form>
            
        </div>
        </div>
	
  </body>

	
</html>
