<!DOCTYPE html>

<html>
  <head>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>


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
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>

<script type="text/javascript" src="bootstrap.min.js"></script>

    <meta charset="utf-8">
    <title>VzCommunicator-Call Center Admin</title>    
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
		function techLoadFunction(id)
		{ //alert(id);
			//document.getElementById("iframeMap").src = "GetTime.html";
			if(id == 'option1'){
			document.getElementById("fiosTv").style.display = 'block';
			document.getElementById("fiosMobile").style.display = 'none';
			document.getElementById("fiosInternet").style.display = 'none';
			}
			else if(id == 'option2'){
			document.getElementById("fiosTv").style.display = 'none';
			document.getElementById("fiosMobile").style.display = 'block';
			document.getElementById("fiosInternet").style.display = 'none';
			}
			else if(id == 'option3'){
			document.getElementById("fiosTv").style.display = 'none';
			document.getElementById("fiosMobile").style.display = 'none';
			document.getElementById("fiosInternet").style.display = 'block';
			}
			
			
		}
		function techLoadFunction1(id)
		{ //alert(id);
			//document.getElementById("iframeMap").src = "GetTime.html";
			if(id == 'assoption1'){
			document.getElementById("fiosTv1").style.display = 'block';
			document.getElementById("fiosMobile1").style.display = 'none';
			document.getElementById("fiosInternet1").style.display = 'none';
			}
			else if(id == 'assoption2'){
			document.getElementById("fiosTv1").style.display = 'none';
			document.getElementById("fiosMobile1").style.display = 'block';
			document.getElementById("fiosInternet1").style.display = 'none';
			}
			else if(id == 'assoption3'){
			document.getElementById("fiosTv1").style.display = 'none';
			document.getElementById("fiosMobile1").style.display = 'none';
			document.getElementById("fiosInternet1").style.display = 'block';
			}
			
			
		}
		function insertText () {
    document.getElementById('techAvail').innerHTML = "Assigned";
     document.getElementById('techAvailDate').innerHTML = "23/11/2015";
      document.getElementById('techName').innerHTML = "Robert Bob";
      $.post( "/searchController", { type: "adminRobert"} );
    //techAvailDate
    //techName
}
function insertText1() {
    document.getElementById('techAvail1').innerHTML = "Assigned";
     document.getElementById('techAvailDate1').innerHTML = "23/11/2015";
      document.getElementById('techName1').innerHTML = "Kimberly";
       $.post( "/searchController", { type: "adminKimberly"} );
    //techAvailDate
    //techName
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
                <a class="navbar-brand" href="../jsp/login.jsp">VzCommunicator - Admin</a>
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
                        <li>
                            <a href="../jsp/generalComplaints.jsp"><i class="fa fa-dashboard fa-fw"></i>General Complaints</a>
                        </li>
                        <li>
                            <a href="../jsp/technicianAvailability.jsp"><i class="fa fa-dashboard fa-fw"></i>Technician Availability</a>
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
	  <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Fios Dispatch Requests</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
		<tr bgcolor="Grey">
			<td width="10%" align="center" style="font-face:verdana;font-size:18px;" background-color="Grey">
				Request Id
			</td>
			<td width="40%" align="center" style="font-face:verdana;font-size:18px;" background-color="Grey">
				Comments
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:18px;" background-color="Grey">
				Request Type
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:18px;" background-color="Grey">
				Request Date
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:18px;" background-color="Grey">
				Status
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:18px;" background-color="Grey">
				Assigned Date
			</td>
			<td width="20%" align="center" style="font-face:verdana;font-size:18px;" background-color="Grey">
				Technician Name
			</td>
		</tr>
		<tr>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				1236785
			</td>
			<td width="40%" style="font-face:verdana;font-size:15px;">
				Set up box not working - Posted by Smith, FL, 213-867-8367
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				Maintenance
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				10/22/2015
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;" id="techAvail">
				<!-- Button trigger modal -->
				
				<a href="#" data-toggle="modal" data-target="#myModal">Assign</a>
				
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;" id="techAvailDate">
				
			</td>
			<td width="20%" align="center" style="font-face:verdana;font-size:15px;" id="techName">
				
			</td>
		</tr>
		<tr>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				1236757
			</td>
			<td width="40%" style="font-face:verdana;font-size:15px;">
				Need to configure Fios TV in my location - Posted by Sebastin Naveen, Tambaram chennai, 9840836588
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				Installation
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				10/22/2015
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				Assigned
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				11/03/2015
			</td>
			<td width="20%" align="center" style="font-face:verdana;font-size:15px;">
				Sathish Madhavan
			</td>
		</tr>
		<tr>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				1236745
			</td>
			<td width="40%" style="font-face:verdana;font-size:15px;">
			    Cable was not properly placed - Posted by Peter, NY, 213-867-8367
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				Maintenance
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				11/23/2015
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;" id="techAvail1">
				<a href="#" data-toggle="modal" data-target="#myModal1">Assign</a>
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;" id="techAvailDate1">
				
			</td>
			<td width="20%" align="center" style="font-face:verdana;font-size:15px;" id="techName1">
				
			</td>
		</tr>
		<tr>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				1236785
			</td>
			<td width="40%" style="font-face:verdana;font-size:15px;">
				Channels are not displaying appropriately - Posted by Jack, NJ, 213-867-8367
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				Maintenance
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				05/21/2015
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				Assigned
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				05/23/2015
			</td>
			<td width="20%" align="center" style="font-face:verdana;font-size:15px;">
				Gerald
			</td>
		</tr>
	</table>
	
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
     
             
	
        <h4 class="modal-title" id="myModalLabel">Assign Technician</h4>
      </div>
      <div class="modal-body">
     
				<label
								class="radio-inline"> <input type="radio"
								name="optionsRadiosInline" id="optionsRadiosInline1"
								value="option1" onclick="techLoadFunction(this.value);">Fios TV
							</label>
			<label
								class="radio-inline"> <input type="radio"
								name="optionsRadiosInline" id="optionsRadiosInline2"
								value="option2" onclick="techLoadFunction(this.value);">Fios Mobile
							</label>
							<label
								class="radio-inline"> <input type="radio"
								name="optionsRadiosInline" id="optionsRadiosInline3"
								value="option3" onclick="techLoadFunction(this.value);">Fios Internet
							</label>
							<br/><br/>
							<div class="form-group" id="fiosTv" style="display:none">
							<label>Fios Tv Technicians</label> <select class="form-control"
								>
								<option>--Select--</option>
								<option>Robert Bob</option>
								<option>Swizdor</option>
								<option>Jim</option>
 
							</select>
						</div>
						<div class="form-group" id="fiosMobile" style="display:none">
							<label>Fios Mobile Technicians</label> <select class="form-control"
								>
								<option>--Select--</option>
								<option>Kimberly</option>
								<option>Joe</option>
								<option>slota</option>
 
							</select>
						</div>
						<div class="form-group" id="fiosInternet" style="display:none">
							<label>Fios Internet Technicians</label> <select class="form-control"
								>
								<option>--Select--</option>
								<option>Mike</option>
								<option>Burtha</option>
								<option>Jeff</option>
 
							</select>
						</div>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal" onclick="insertText();">Assign</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
     
             
	
        <h4 class="modal-title" id="myModalLabel">Assign Technician</h4>
      </div>
      <div class="modal-body">
     
				<label
								class="radio-inline"> <input type="radio"
								name="optionsRadiosInline" id="optionsRadiosInline1"
								value="assoption1" onclick="techLoadFunction1(this.value);">Fios TV
							</label>
			<label
								class="radio-inline"> <input type="radio"
								name="optionsRadiosInline" id="optionsRadiosInline2"
								value="assoption2" onclick="techLoadFunction1(this.value);">Fios Mobile
							</label>
							<label
								class="radio-inline"> <input type="radio"
								name="optionsRadiosInline" id="optionsRadiosInline3"
								value="assoption3" onclick="techLoadFunction1(this.value);">Fios Internet
							</label>
							<br/><br/>
							<div class="form-group" id="fiosTv1" style="display:none">
							<label>Fios Tv Technicians</label> <select class="form-control"
								>
								<option>--Select--</option>
								<option>Robert Bob</option>
								<option>Swizdor</option>
								<option>Jim</option>
 
							</select>
						</div>
						<div class="form-group" id="fiosMobile1" style="display:none">
							<label>Fios Mobile Technicians</label> <select class="form-control"
								>
								<option>--Select--</option>
								<option>Kimberly</option>
								<option>Joe</option>
								<option>slota</option>
 
							</select>
						</div>
						<div class="form-group" id="fiosInternet1" style="display:none">
							<label>Fios Internet Technicians</label> <select class="form-control"
								>
								<option>--Select--</option>
								<option>Mike</option>
								<option>Burtha</option>
								<option>Jeff</option>
 
							</select>
						</div>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal" onclick="insertText1();">Assign</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div>

<!-- Modal -->

                            </div>
                            <!-- /.table-responsive -->
                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <!-- /.row -->
           
          
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
               
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
        </div>
        
        
	
  </body>

	
</html>