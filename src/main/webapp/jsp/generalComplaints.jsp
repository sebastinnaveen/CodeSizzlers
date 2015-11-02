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
    <meta charset="utf-8">
    <title>VzCommunicator - Complaints</title>    
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
		
	</script>
    
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">VzCommunicator - Admin</a>
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
                            <a href="../jsp/callcenteradmin.jsp"><i class="fa fa-table fa-fw"></i> Fios Dispatch Requests</a>
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
                    <h1 class="page-header">Complaints</h1>
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
                                <table border="1" width="100%">
		<tr bgcolor="Grey">
			<td width="10%" align="center" style="font-face:verdana;font-size:18px;" background-color="Grey">
				Request Id
			</td>
			<td width="40%" align="center" style="font-face:verdana;font-size:18px;" background-color="Grey">
				Request
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:18px;" background-color="Grey">
				Category
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
				Fios internet was not working for the past 5 hours, please resolve this issue asap.
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				Fios - Internet
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				10/22/2015
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				<a href="#">Assign</a>
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				
			</td>
			<td width="20%" align="center" style="font-face:verdana;font-size:15px;">
				
			</td>
		</tr>
		<tr>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				1236757
			</td>
			<td width="40%" style="font-face:verdana;font-size:15px;">
				There was issue with the setup box, please resolve.
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				Fios - TV
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				03/22/2015
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				Assigned
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				03/24/2015
			</td>
			<td width="20%" align="center" style="font-face:verdana;font-size:15px;">
				Williams
			</td>
		</tr>			
		<tr>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				1236752
			</td>
			<td width="40%" style="font-face:verdana;font-size:15px;">
				Issue with the landline. please resolve.
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				Fios - Landline
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				09/12/2015
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				<a href="#">Assign</a>
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				
			</td>
			<td width="20%" align="center" style="font-face:verdana;font-size:15px;">
				
			</td>
		</tr>
		<tr>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				1236787
			</td>
			<td width="40%" style="font-face:verdana;font-size:15px;">
				There was issue with the setup box, please resolve.
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				Fios - TV
			</td>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				01/10/2015
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				Assigned
			</td>
			<td width="10%" align="center" style="font-face:verdana;font-size:15px;">
				01/11/2015
			</td>
			<td width="20%" align="center" style="font-face:verdana;font-size:15px;">
				Peter
			</td>
		</tr>
	</table>
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