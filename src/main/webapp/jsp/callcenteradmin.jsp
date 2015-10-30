<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Call Center Admin</title>

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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
               
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
             
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                    
                        <li>
                            <a href="index.html"><i class="fa fa-dashboard fa-fw"></i>Admin Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">Burndown Charts</a>
                                </li>
                                <li>
                                    <a href="morris.html">Morris.js Charts</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                       
                            </ul>
                            <!-- /.nav-second-level -->
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
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
         
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-8">
                   
                    <!-- /.panel -->
                    <div class="panel panel-default">
                       
                        <!-- /.panel-heading -->
                             <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Tickets Queue
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                           <th>Ticket Id</th>
                                            <th>Ticket Desc </th>
                                            <th>Ticket Priority </th>
                                            <th>Customer Name</th>
                                            <th>Ticket Requested Date</th>
                                            <th>Assigned To</th>
                                             <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>1510291100</td>
                                            <td>We recently ordered FIOS cable, but (1) Verizon apparently had no record of who the installer was (the one who spent several hours on my property and inside my house), then (2) it was clear that the installed box was defective (warned it was overheating and wouldn't record). When one of us managed to get through to a "live"customer representative, that person neither knew who the installer was nor would dispatch anyone else to deal with the problem -- about an installation the day before! When the installer later called for followup, he indicated he couldn't give us his phone number and he couldn't come back out to replace the defective unit</td>
                                            <td>HIGH</td>
                                            <td>WaveDad</td>
                                            <td>28/Oct/2015</td>
                                            <td class="center">Robert Bob</td>
                                            <td ><div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                            <span class="sr-only">Complete</span>
                                        </div></td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>1510291101</td>
                                            <td>I've had Verizon in early 2000s when FiOS was first available in my area, but the speed sucks so I was better off switching back to dial-up. 

 

Many years have passed so I thought I would try Verizon again as I've heard good things about them. I signed up for the bundle service in 2012, and it's been an internet living hell when you're paying $140 every month and had to struggle daily to get connected onto the slow internet that takes 3minutes to load Google search page if you're lucky (my plan is 50/25). 

 

I've had no internet connectivity on the 2nd floor of my house and I've contacted Verizon many times about it. 

First time I'm told the router they provided could cover 100K range, so the problem might be the internet speed. I naively believed them and upgraded my service and got myself locked for another 2year nightmare
</td>
                                            <td>HIGH</td>
                                            <td>thelalu</td>
                                            <td>01/Sep/2015</td>
                                            <td class="center">Christopher</td>
                                            <td ><div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">Complete</span>
                                        </div></td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>1510291102</td>
                                            <td>I've had FIOS for 6 months.  Billing and Customer services is the worst.  Not even sure if savings are an advantage - given the time you have to spend resolving billing issues.  I've spent 13hrs - it's like a full time job.  I am considering going back to Comcast and using Vonage.  Unfortunately Verizon gets you with at $175 penalty for cancelling within a year.  6months and counting.  Keep you phone and TV with seperate companies</td>
                                            <td>HIGH</td>
                                            <td>WaveDad</td>
                                            <td>02/Sep/2015</td>
                                            <td class="center">Jones</td>
                                            <td ><div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">20% Complete (success)</span>
                                        </div></td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>1510291103</td>
                                            <td>I've had Verizon for almost 4 years and I've had the Fios Bundle for over 2.  In October of 2009, I went to buy a new cell phone at a Verizon store and one of the representatives, Gilbert, for Fios started talking to me about my plan and telling me he can get it down cheaper and I could add HBO/Cinemax and I would only be adding like $10 more to my bill.  He did all the calculations printed out an invoice and noted this:

 

I would pay:

$146.96 before taxes and fees for 6 months.

THEN

$166.96 for months 7-12.

THEN

$176.96 for the whole second year.
</td>
                                            <td>HIGH</td>
                                            <td>Taken727</td>
                                            <td>03/Sep/2015</td>
                                            <td class="center">Kimberly</td>
                                            <td ><div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div></td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>1510291104</td>
                                            <td>I have been on the phone with multiple different reps from multiple different departments over the past 5 days, all of which total well over 10+ hours! I have been told every day that my services were going to be restored, I also was told I was starting the 24 mth plan with $300 bonus gift card. Each day my services are still not restored, and when I call I am told something completely different that what I was told by the previous representative! I have spent countless hours only trying to get my services turned back on</td>
                                            <td>HIGH</td>
                                            <td>ajwalas</td>
                                            <td>04/Sep/2015</td>
                                            <td class="center">Joseph SLota</td>
                                            <td ><div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">60% Complete (success)</span>
                                        </div></td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>1510291100</td>
                                            <td>I'm looking for an e-mail address or physical mail (aka "snail mail") address I can use to submit a complaint regarding Verizon Online's (DSL in my case) horrid customer service.  The Verizon website does not provide any useful information on this.  I want to be sure that someone beyond the poorly trained foreign sub-contractors are aware of what poor service they are providing.  There seems to be no sense of accountability or concern when customers are not happy.</td>
                                            <td>HIGH</td>
                                            <td>dbatty90293</td>
                                            <td>05/Sep/2015</td>
                                            <td class="center">Jim</td>
                                            <td ><div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">80% Complete (success)</span>
                                        </div></td>
                                        </tr>
                                       
                                    </tbody>
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
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
               
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-8 -->
                
                <!-- /.col-lg-4 -->
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

    <!-- Morris Charts JavaScript -->
    <script src="../bower_components/raphael/raphael-min.js"></script>
    <script src="../bower_components/morrisjs/morris.min.js"></script>
    <script src="../js/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
