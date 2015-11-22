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
<%@ page import="argo.jdom.JdomParser" %>
<%@ page import="argo.jdom.JsonNode" %>
<%@ page import="argo.jdom.JsonRootNode" %>
<%@ page import="argo.saj.InvalidSyntaxException" %>
<%@ page import="redis.clients.jedis.Jedis" %>
<%@ page import="redis.clients.jedis.JedisPool" %>
<%@ page import="redis.clients.jedis.JedisPoolConfig" %>
<%@ page import="redis.clients.jedis.Protocol" %>
    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="examples.css" />
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
    

	  <div id="page-wrapper1">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">My Jobs</h1>
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
		<tr>
			<td width="10%" align="center" style="font-face:verdana;font-size:18px;">
				Request Id
			</td>			
			<td width="30%" align="center" style="font-face:verdana;font-size:18px;">
				Request
			</td>
			
			<td width="30%" align="center" style="font-face:verdana;font-size:18px;">
				Request Date
			</td>
			<td width="30%" align="center" style="font-face:verdana;font-size:18px;">Status
			</td>		
		</tr>
		<tr>
			<td width="10%" style="font-face:verdana;font-size:15px;">
				11011
			</td>
			<td width="30%" align="center" style="font-face:verdana;font-size:15px;">
				Fios Tv Installation
			</td>
			<td width="30%" style="font-face:verdana;font-size:15px;">
				20/11/2015
			</td>
			<td width="40%" align="center" style="font-face:verdana;">
				
                                            
                                            <select >
                                               
                                                <option selected="selected">In Progress</option>
                                                <option>Closed</option>
                                               
                                            </select>
                                        
			</td>				
		</tr>
		
		<tr>
			<td width="40%" style="font-face:verdana;font-size:15px;">
				10003
			</td>
			<td width="30%" align="center" style="font-face:verdana;font-size:15px;">
				Fios Internet Installation
			</td>
			<td width="30%" style="font-face:verdana;font-size:15px;">
				21/11/2015
			</td>	
			<td width="30%" align="center" style="font-face:verdana;font-size:15px;">
				<select  disabled="disabled">
                                                <option>Closed</option>
                                               
                                                <option>In Progress</option>
                                               
                                            </select>
			</td>			
		</tr>
		<tr>
			<td width="40%" style="font-face:verdana;font-size:15px;">
				10004
			</td>
			<td width="30%" align="center" style="font-face:verdana;font-size:15px;">
				Fios Landline Installtion
			</td>
			<td width="30%" style="font-face:verdana;font-size:15px;">
				22/11/2015
			</td>
			<td width="30%" align="center" style="font-face:verdana;font-size:15px;">
				<select  disabled="disabled">
                                                <option>Closed</option>
                                                <option>New</option>
                                                <option>In Progress</option>
                                               
                                            </select>
			</td>
			<% 	String robertvalue ="";
			String kimvalue ="";
			try {
			    String vcap_services = System.getenv("VCAP_SERVICES");
			    if (vcap_services != null && vcap_services.length() > 0) {
			        // parsing rediscloud credentials
			        JsonRootNode root = new JdomParser().parse(vcap_services);
			        JsonNode rediscloudNode = root.getNode("rediscloud");
			        JsonNode credentials = rediscloudNode.getNode(0).getNode("credentials");

			        JedisPool pool = new JedisPool(new JedisPoolConfig(),
			                credentials.getStringValue("hostname"),
			               12636,
			                Protocol.DEFAULT_TIMEOUT,
			                credentials.getStringValue("password"));
			        Jedis jedis = pool.getResource();
			     //   jedis.set("adminRobert", "yes");
			        robertvalue = jedis.get("adminRobert");
			         robertvalue = jedis.get("adminKimberly");
			        // return the instance to the pool when you're done
			        pool.returnResource(jedis);
			    //    response.getWriter().append("redis value: ").append(String.valueOf(value));
			    }
			} catch (InvalidSyntaxException ex) {
			    // vcap_services could not be parsed.
				//response.getWriter().append("Error at: ").append(ex.getMessage());
			}
			if(robertvalue!=null&&robertvalue.equals("yes")){
			%>				
		</tr>
			<tr>
			<td width="40%" style="font-face:verdana;font-size:15px;">
				1236785
			</td>
			<td width="30%" align="center" style="font-face:verdana;font-size:15px;">
				Set up box not working - Posted by Smith, FL, 213-867-8367
			</td>
			<td width="30%" style="font-face:verdana;font-size:15px;">
				22/11/2015
			</td>
			<td width="30%" align="center" style="font-face:verdana;font-size:15px;">
				<select >
                                                <option>New</option>
                                                <option>In Progress</option>
                                                <option>Closed</option>
                                               
                                            </select>
			</td>				
		</tr>
		<%} if(kimvalue!=null&&kimvalue.equals("yes")){%>	
		
					
		</tr>
			<tr>
			<td width="40%" style="font-face:verdana;font-size:15px;">
				1236745
			</td>
			<td width="30%" align="center" style="font-face:verdana;font-size:15px;">
				Cable was not properly placed - Posted by Peter, NY, 213-867-8367
			</td>
			<td width="30%" style="font-face:verdana;font-size:15px;">
				22/11/2015
			</td>
			<td width="30%" align="center" style="font-face:verdana;font-size:15px;">
				<select >
                                                <option>New</option>
                                                <option>In Progress</option>
                                                <option>Closed</option>
                                               
                                            </select>
			</td>				
		</tr>
		<%} %>	
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