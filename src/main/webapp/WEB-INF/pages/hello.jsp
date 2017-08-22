<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title></title>


	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/css/gsdk-bootstrap-wizard.css" rel="stylesheet" />
	<link href="assets/css/demo.css" rel="stylesheet" />
</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-3">
				<div class="wizard-container">
					<div class="card wizard-card" data-color="orange" id="wizardProfile">
						<form action="" method="">
							<div class="wizard-header">
								<p class="text-center">
									<img src="/assets/img/logo.png"  width="70" height="50" >

								</p>
							</div>

							<div class="wizard-navigation">
								<ul>
									<li><a href="#login" data-toggle="tab">LOG IN</a></li>
									<li><a href="#signup" data-toggle="tab">SIGN UP</a></li>

								</ul>

							</div>

							<div class="tab-content">
								<div class="tab-pane" id="signup">
									<div class="row">
										<div class="container-fluid html-editor-align-center">
										<div class="col-sm-7 col-lg-offset-3">
											<div class="form-group">
												<label>First Name </label>
												<input name="firstname" type="text" class="form-control" placeholder="Andrew...">
											</div>
											<div class="form-group">
												<label>Last Name </label>
												<input name="lastname" type="text" class="form-control" placeholder="Smith...">
											</div>
										</div>
										<div class="col-sm-7 col-sm-offset-3">
											<div class="form-group">
												<label>Email </label>
												<input name="email" type="email" class="form-control" placeholder="name@mail.com">
											</div>
										</div>
											<div class="col-sm-7 col-sm-offset-3">
												<div class="form-group">
													<label>Password </label>
													<input name="password" type="password" class="form-control">
												</div>
											</div>

											<div class="text-center">
												<input type='button' class='btn btn-fill btn-warning btn-wd btn-sm' name='signup' value='Sign Up' />

											</div>
									</div>
									</div>
								</div>
								<div class="tab-pane" id="login">

									<div class="row">


										<div class="col-sm-7 col-sm-offset-3">
											<div class="form-group">
												<label>Email </label>
												<input name="email" type="email" class="form-control" placeholder="name@mail.com">
											</div>
										</div>
										<div class="col-sm-7 col-sm-offset-3">
											<div class="form-group">
												<label>Password </label>
												<input name="password" type="password" class="form-control">
											</div>
										</div>

										<div class="text-center">
											<a href="Admin">
											<input type='button' class='btn btn-fill btn-warning btn-wd btn-sm' name='login' value='Log In'/>
											</a>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



</div>

</body>


<script src="<%=request.getContextPath()%>/assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/gsdk-bootstrap-wizard.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>

</html>
