<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Fios Dispatch</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
			
				document.getElementById("iframeMap").style.display = 'block';
				
		}
		
		
	</script>
	
	
	<script>

var marker;

function initMap() {

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 10,
	//State Latitude & Longitude
    center: {lat: 13.0900, lng: 80.2700}
  });

  var image1 = "green1-dot.png";
  marker = new google.maps.Marker({
    map: map,
    draggable: true,
    animation: google.maps.Animation.DROP,
	icon : image1,
    position: {lat: 13.0497, lng: 80.2126}
  });
  marker.addListener('click', toggleBounce);
  
  
  marker = new google.maps.Marker({
    map: map,
    draggable: true,			
    animation: google.maps.Animation.DROP,
	icon : image1,
    position: {lat: 12.9531946, lng: 80.1416008}
  });
  marker.addListener('click', toggleBounce);
  
}

function clickMap()
{
	
}

function toggleBounce() {
  
  if (marker.getAnimation() !== null) {
    marker.setAnimation(null);
  } else {
    marker.setAnimation(google.maps.Animation.BOUNCE);
  }  
}

    </script>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        

        <div id="page-wrapper">
            
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Vz Communicator - FIOS Dispatch
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Please enter your Subscription ID/Mobile Number</label>
                                            <input class="form-control" id="txtSubid">
                                            <button type="submit" class="btn btn-default" onclick="return clickMap();">Locate Technician</button>
                                        </div>
                                        
                                        <input type="hidden" id="custName" name="custName" value="Naveen" />
	<input type="hidden" id="custLocation" name="custLocation" value="Tambaram,india,chennai" />
	<input type="hidden" id="custLocation" name="custNumber" value="9840384885" />
                                        
                                        </div>
                                      
                                        
                                            <iframe border="0" scroll="no" id="iframeMap" height="400px" width="50%" >
                                       
                                        <div id="map"></div>
                                        </iframe>
                                       
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
