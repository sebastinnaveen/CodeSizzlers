<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
		
		function loadiFrame()
		{
			//document.getElementById("iframeMap").src = "GetTime.html";
			document.getElementById.form.submit();
			
			document.getElementById.method
		}
		
	</script>
    
		<div>
            <div>                
                  <h1>Vz Communicator - FIOS Dispatch</h1>                
                <!-- /.col-lg-12 -->
            </div>
            
            <%
            System.out.println("success---->"+request.getAttribute("success"));
            if(request.getAttribute("success")!=null){%>
            <label id="lblMessage"  ><span style="font-family:'verdana';font-size:12px;"><b>Thanks for submitting the Request. Your issue will get resolved within 24 Hrs.</b></span></label>
           <br/><br/>
           <% }%>
           
           <br/><br/>
            <form name="fiosDispatch" id="fiosDispatch" method ="post" action="/searchcontroller.portal?type=Notify">
			<label class="desc" id="title4" for="Field4">
				<span style="font-family:'verdana';font-size:12px;"><b>Please enter your Subscription ID/Mobile Number</b></span>
			</label>
			<div>
				<input id="txtSubid" name="Field4" type="email" spellcheck="false" class="field text medium" value=""	maxlength="255" tabindex="13" />
			</div>
			<br/><br/>					
			<iframe frameborder="0" scrolling="no" id="iframeMap" height="400px" width="50%" src="/vz/jsp/Maps.HTML"></iframe>
			<br/><br/>
			<input id="btnTech" name="saveForm" type="Submit"  value="Confirm Request >>" >			
			<br/><br/>
			
			<input type="hidden" id="custName" name="custName" value="Naveen" />
	<input type="hidden" id="custLocation" name="custLocation" value="Tambaram,india,chennai" />
	<input type="hidden" id="custLocation" name="custNumber" value="9840384885" />
			</form>
	</div>
	
  </body>
</html>