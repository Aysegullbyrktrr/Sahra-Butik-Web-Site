<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Projem2022.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	 <div class="card-box pd-20 height-100-p mb-30">
		<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>Ana Sayfa</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.aspx">Ana Sayfa</a></li>
									<%--<li class="breadcrumb-item active" aria-current="page">Basic Tables</li>--%>
								</ol>
							</nav>
							
						</div>

                    </div></div>

	 </div>
	<div class="card-box pd-20 height-100-p mb-30">
				<div class="row align-items-center">
					<div class="col-md-4">
					<img src="vendors/images/sahra-logo.png" />
					</div>
					<div class="col-md-8">
						<h4 class="font-20 weight-500 mb-10 text-capitalize">
						 Hoşgeldiniz <div class="weight-600 font-30 text-orange">Bayan Admin</div>
						</h4>
						<p class="font-18 max-width-600">İşlem yaparken lütfen dikkatli olun.</p>
					</div>
				</div>
			</div>

	<div class="row clearfix progress-box">
				<div class="col-lg-3 col-md-6 col-sm-12 mb-30">
					<div class="card-box pd-30 height-100-p">
						<div class="progress-box text-center">
							 <input type="text" class="knob dial3" value="90" data-width="120" data-height="120" data-linecap="round" data-thickness="0.12" data-bgColor="#fff" data-fgColor="#009aff" data-angleOffset="180" readonly>
							<h5 class="text-light-blue padding-top-10 h5">Memnuniyet</h5>
							<span class="d-block">90% Ortalama <i class="fa text-light-orange fa-line-chart"></i></span>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 mb-30">
					<div class="card-box pd-30 height-100-p">
						<div class="progress-box text-center">
							 <input type="text" class="knob dial2" value="80" data-width="120" data-height="120" data-linecap="round" data-thickness="0.12" data-bgColor="#fff" data-fgColor="#00e091" data-angleOffset="180" readonly>
							<h5 class="text-light-green padding-top-10 h5">Farklılıklar</h5>
							<span class="d-block">75% Ortalama <i class="fa text-light-green fa-line-chart"></i></span>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 mb-30">
					<div class="card-box pd-30 height-100-p">
						<div class="progress-box text-center">
							 <input type="text" class="knob dial3" value="90" data-width="120" data-height="120" data-linecap="round" data-thickness="0.12" data-bgColor="#fff" data-fgColor="#f56767" data-angleOffset="180" readonly>
							<h5 class="text-light-orange padding-top-10 h5>Hız</h5>
							<span class="d-block">90% Ortalama <i class="fa text-light-orange fa-line-chart"></i></span>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 mb-30">
					<div class="card-box pd-30 height-100-p">
						<div class="progress-box text-center">
							 <input type="text" class="knob dial4" value="65" data-width="120" data-height="120" data-linecap="round" data-thickness="0.12" data-bgColor="#fff" data-fgColor="#a683eb" data-angleOffset="180" readonly>
							<h5 class="text-light-purple padding-top-10 h5">Üretim</h5>
							<span class="d-block">65% Ortalama <i class="fa text-light-purple fa-line-chart"></i></span>
						</div>
					</div>
				</div>
			</div>

	<!-- js -->
	<script src="vendors/scripts/core.js"></script>
	<script src="vendors/scripts/script.min.js"></script>
	<script src="vendors/scripts/process.js"></script>
	<script src="vendors/scripts/layout-settings.js"></script>
	<script src="src/plugins/jQuery-Knob-master/jquery.knob.min.js"></script>
	<script src="src/plugins/highcharts-6.0.7/code/highcharts.js"></script>
	<script src="src/plugins/highcharts-6.0.7/code/highcharts-more.js"></script>
	<script src="src/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
	<script src="src/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="vendors/scripts/dashboard2.js"></script>
</asp:Content>
