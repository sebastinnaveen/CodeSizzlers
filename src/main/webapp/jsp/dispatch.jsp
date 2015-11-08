<!DOCTYPE html>

<html>
<head>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script type="text/javascript"
	src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script type="text/javascript"
	src="https://hpneo.github.io/gmaps/gmaps.js"></script>
<!-- Bootstrap Core CSS -->
<link href="../bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">

<!-- Timeline CSS -->
<link href="../dist/css/timeline.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../bower_components/morrisjs/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../bower_components/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="examples.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>

<meta charset="utf-8">
<title>VDSI Hackathon</title>
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
			if(document.getElementById("inputError").value == '')
			{
			   alert('Please enter the Subscription ID');
			   document.getElementById("txtSubid").focus();
			   return false;
			}	
			
		//	if(document.getElementById("lblMessage").style.display == 'none')
		//	{				
		//		setTimeout(loadiFrame(), 5000);
		//	}
			
			/*if(document.getElementById("iframeMap").style.display == 'none')
			{
				document.getElementById("iframeMap").style.display = 'block';
				document.getElementById("iframeMap").src = "Maps.HTML";
			}	*/		
		}
		
		function mapLoadFunction(id)
		{ //alert(id);
			//document.getElementById("iframeMap").src = "GetTime.html";
			if(id == 'Fios Tv'){
			document.getElementById("map1").style.display = 'block';
			jQuery("iframe#iframeMap").attr("src", "../jsp/Maps.HTML");
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
    $('#fiosDispatch').bootstrapValidator({
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
                        message: 'Please enter account / mobile number'
                    }
                }
            }
           
            
        }
    });
});

</script>
	<nav class="navbar navbar-default navbar-static-top" role="navigation"
		style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../jsp/login.jsp">VzCommunicator </a>
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
					<li><a href="../jsp/login.jsp"><i
							class="fa fa-table fa-fw"></i>Dashboard</a></li>


				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side -->
	</nav>
	<div id="page-wrapper">
		<div>
			<h1>Vz Communicator - FIOS Dispatch</h1>
			<!-- /.col-lg-12 -->
		</div>

		<div class="panel-body">
			<div class="row">
				<div class="col-lg-6">
					<form role="form" name="fiosDispatch" id="fiosDispatch"
						method="post" action="../searchController?type=fiosDispatch">
						 
						<div class="form-group" for="inputError">
							<label>Please enter your Account ID/Mobile Number</label> <input
								class="form-control" id="txtMobNo" name="txtMobNo">

						</div>
						<div class="form-group">
							<label>Installation/Maintanence</label><br /> <label
								class="radio-inline"> <input type="radio"
								name="optionsRadiosInline" id="optionsRadiosInline1"
								value="option1" checked>Installation
							</label> <label class="radio-inline"> <input type="radio"
								name="optionsRadiosInline" id="optionsRadiosInline2"
								value="option2">Maintanence
							</label>

						</div>
						<div class="form-group">
							<label>Products Category</label> <select class="form-control"
								onchange="mapLoadFunction(this.value)">
								<option>--Select--</option>
								<option>Fios Tv</option>
								<option>Fios Phone</option>
								<option>Fios Internet</option>

							</select>
						</div>
						<div class="form-group">
							<label>Comments</label>
							<textarea class="form-control" rows="3"></textarea>
						</div>
						<div class="form-group" id="map1" style="display: none">
							<iframe frameborder="0" scrolling="no" id="iframeMap" 
								height="400px" width="100%" ></iframe>
						</div>
					
						<div class="form-group" id="map2" style="display: none">
							<iframe frameborder="0" scrolling="no" id="iframeMap1"
								height="400px" width="100%" src="../jsp/Maps1.html"></iframe>
						</div>
						<button type="submit" class="btn btn-default" >Confirm
							Request</button>
						<input type="hidden" id="customerName" name="customerName"
							value="Naveen" /> <input type="hidden" id="customerLocation"
							name="customerLocation" value="Tambaram,india,chennai" /> <input
							type="hidden" id="customerNumber" name="customerNumber"
							value="9840384885" />
					</form>
				</div>
				<!-- /.col-lg-6 (nested) -->

			</div>
			<!-- /.row (nested) -->
		</div>
	</div>

</body>


</html>