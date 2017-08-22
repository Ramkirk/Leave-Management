<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 19-Aug-17
  Time: 11:19 AM
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html lang="en" ng-app="myapp" ng-controller="myCtrl">
<head>
  <meta charset="utf-8" />


  <title></title>
  <link href="/assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="/assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>
  <link href="/assets/css/demo.css" rel="stylesheet"/>
  <link href="/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
  <link href="/assets/css/gsdk-bootstrap-wizard.css" rel="stylesheet"/>



</head>
<body>

<div class="wrapper">
  <div class="sidebar" data-color="blue" data-image="/assets/img/wizard-city.jpg">



    <div class="sidebar-wrapper">
      <div>

      </div>
      <div class="logo">
        <a href="#" class="simple-text">
          Dashboard
        </a>
      </div>

      <ul class="nav">
        <li>
          <a href="#show">
            <i class=""></i>
            <p>Add New Employee</p>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="ab"></i>
            <p>View All</p>
          </a>
        </li>
        <li class="nav-divider"></li>
        <li>
          <a href="#">
            <i class=""></i>
            <p>Notifications</p>
          </a>
        </li>


      </ul>
    </div>
  </div>

  <div class="main-panel">
    <nav class="navbar navbar-default navbar-fixed">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Profile</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <b>User</b>
              <i class="pe-7s-user"></i>
            </a>
            <ul class="dropdown-menu">
              <li><a href="#">Profile</a></li>
              <li><a href="#">Settings</a></li>
              <li class="divider"></li>
              <li><a href="hello.jsp">Log Out</a></li>
            </ul>
          </li>
        </ul>
        &nbsp;
        <p class="text-center">
          <img src="assets/img/logo.png"  width="40" height="35" >
        </p>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-8 col-sm-offset-1">
          <div class="wizard-container">
            <div class="card-new wizard-card" data-color="orange"  id="show">
              <form action="" method="">

                <div class="wizard-header">
                  <h3>
                    <b>ADD</b> NEW PROFILE <br>
                    <%--<small>This information will let us know more about you.</small>--%>
                  </h3>
                </div>

                <div class="wizard-navigation">
                  <ul>
                    <li><a href="#about" data-toggle="tab">Basic Details</a></li>

                    <li><a href="#address" data-toggle="tab">Contact Details</a></li>

                  </ul>

                </div>

                <div class="tab-content">
                  <div class="tab-pane" id="about">
                    <div class="row">
                      <div class="col-sm-3">
                        <div class="picture-container">
                          <div class="picture">
                            <img src="assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>
                            <input type="file" id="wizard-picture">
                          </div>
                          <h6>Choose Picture</h6>
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>First Name*</label>
                          <input name="firstname" type="text" class="form-control" placeholder="Jhon">
                        </div>
                        </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>Last Name*</label>
                          <input name="lastname" type="text" class="form-control" placeholder="Smith...">
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>Designation</label>
                          <select class="select form-control" name="designation">
                            <option value="">1</option>
                            <option value="">2</option>
                            <option value="">3</option>
                            <option value="">4</option>
                          </select>
                        </div>
                      </div>

                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>Email*</label>
                          <input name="email" type="email" class="form-control" placeholder="name@mail.com">
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>UG Qualification</label>
                          <input name="ug" type="text" class="form-control" placeholder="B.E(ECE)">
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>PG Qualification</label>
                          <input name="pg" type="text" class="form-control" placeholder="M.E">
                        </div>
                      </div>

                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>Gender*</label>
                          <select class="select form-control" name="gender">

                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>DOB*</label>
                          <input type="text" class="form-control" ui-mask="99-99-9999" ng-model="dob" name="dob" placeholder="dd/mm/yyyy">
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="tab-pane" id="address">
                    <div class="row">
                      <div class="col-sm-12">

                      </div>

                      <div class="col-md-4 ">
                        <div class="form-group">
                        <label class="input-group">Contact 1*</label>
                        <input type="text" class="form-control" ui-mask="999-999-9999" name="contact1" ng-model="contact1" ng-blur="validatecontact()" required/>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                        <label class="input-group">Contact 2</label>
                        <input type="text" class="form-control" ui-mask="999-999-9999" ng-blur="validatecontact()" ng-model="contact2" name="contact2">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label>Address 1</label>
                          <input type="text" class="form-control" placeholder="242,5h Avenue">
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>Address 2</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>City</label>
                          <input type="text" class="form-control" placeholder="New York">
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>State</label>
                          <input type="text" class="form-control" placeholder="State Name">
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>Country</label><br>
                          <select name="country" class="form-control">
                            <option value="Afghanistan"> Afghanistan </option>
                            <option value="Albania"> Albania </option>
                            <option value="Algeria"> Algeria </option>
                            <option value="American Samoa"> American Samoa </option>
                            <option value="Andorra"> Andorra </option>
                            <option value="Angola"> Angola </option>
                            <option value="Anguilla"> Anguilla </option>
                            <option value="Antarctica"> Antarctica </option>
                            <option value="...">...</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="wizard-footer height-wizard">
                  <div class="pull-right">
                    <input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm' name='next' value='Next' />
                    <input type='button' class='btn btn-finish btn-fill btn-warning btn-wd btn-sm' name='finish' value='Finish' />

                  </div>

                  <div class="pull-left">
                    <input type='button' class='btn btn-previous btn-fill btn-default btn-wd btn-sm' name='previous' value='Previous' />
                  </div>
                  <div class="clearfix"></div>
                </div>

              </form>
            </div>
          </div> <!-- wizard container -->
        </div>
      </div><!-- end row -->
    </div>

</div>
  </div>

<%--<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header panel-primary">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" >Add New Employee</h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-lg-12">
            <form role="form" class="form-horizontal" name="myform1">
              <div class="form-group" >
                <div class="col-lg-12">

                  <div class="col-md-4">
                    <label>First Name :</label>
                    <input type="text" class="form-control" placeholder="First Name" ng-model="f_name" name="f_name">
                  </div>
                  <div class="col-md-4">
                    <label>Last Name :</label>
                    <input type="text" class="form-control" placeholder="Last Name" ng-model="l_name" name="l_name">
                  </div>


                  <div class="col-md-4">
                    <label>Email :</label>
                    <input type="email" class="form-control" placeholder="mail@example.com" ng-model="e_mail" name="e_mail">
                  </div>
                </div>



              </div>
              <button type="submit" class="btn btn-info btn-fill center-block"  ng-click="">
                Add</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>--%>
</body>

<!--   Core JS Files   -->

<script src="<%=request.getContextPath()%>/assets/js/angular.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/gsdk-bootstrap-wizard.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/mask.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/check.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/light-bootstrap-dashboard.js"></script>



<!--&lt;!&ndash;  Google Maps Plugin    &ndash;&gt;-->
<!--<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>-->

<!--&lt;!&ndash; Light Bootstrap Table Core javascript and methods for Demo purpose &ndash;&gt;-->
<!--<script src="assets/js/light-bootstrap-dashboard.js"></script>-->

<!--&lt;!&ndash; Light Bootstrap Table DEMO methods, don't include it in your project! &ndash;&gt;-->
<!--<script src="assets/js/demo.js"></script>-->


</html>

