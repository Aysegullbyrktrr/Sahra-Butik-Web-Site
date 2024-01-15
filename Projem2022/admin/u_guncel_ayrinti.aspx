<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="u_guncel_ayrinti.aspx.cs" Inherits="Projem2022.admin.u_guncel_ayrinti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="card-box pd-20 height-100-p mb-30">
		<div class="page-header">
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<div class="title">
						<h4><a href="index.aspx">Ana Sayfa</a></h4>
					</div>
					<nav aria-label="breadcrumb" role="navigation">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="u_s_guncelle.aspx">Üyeler</a></li>
							<li class="breadcrumb-item active" aria-current="page">Üye Güncelle/Sil</li>
						</ol>
					</nav>
				</div>
				</div>
			</div>
		</div>
		<div class="alert alert-success alert-dismissible fade show" role="alert"  id="msj" runat="server" visible="false">
			<strong>Sahra Butik</strong> Üye Güncelleme işlemi başarılı
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<div class="pd-20 card-box mb-30">
		<div class="pd-20">
			<h4 class="auto-style3">Üye Güncelleme Ekranı</h4>
		</div>
		<div class="clearfix">
			<div class="pull-left">
			<%--	<h4 class="text-blue h4"></h4>
				<p class="mb-30">All bootstrap element classies</p>--%>
			</div>
			<div class="pull-right">
				<%--<a href="#basic-form1" class="btn btn-primary btn-sm scroll-click" rel="content-y"  data-toggle="collapse" role="button"><i class="fa fa-code"></i> Source Code</a>--%>
			</div>
		</div>
		<%--
		<div id="gunbasarili" runat="server" class="alert alert-success alert-dismissible fade show" role="alert" visible="false">
			<strong>Başarılı işlem!</strong> Girilen bilgiler kaydedilmiştir.
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<div id="gunbasarisiz" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert" visible="false">
			<strong>Hatalı işlem!</strong> Kayıt sırasında bir hata oluştu bilgilerinizi kontrol ederek lütfen tekrar deneyiniz.
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		--%>
		<form>
			<div class="container">
				<div class="form-group row">
					<div class="col-sm-12 col-md-12">
						<label for="validationDefault01"  class="col-sm-12 col-md-2 col-form-label">Ad</label>
						<asp:TextBox ID="TextBox1" class="form-control" placeholder="Ayşe" required="required" runat="server"></asp:TextBox>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="form-group row">
					<div class="col-sm-12 col-md-12">
						<label for="validationDefault02"  class="col-sm-12 col-md-2 col-form-label">Soyad</label>
						<asp:TextBox ID="TextBox2" class="form-control" placeholder="Bayraktar" required="required" runat="server"></asp:TextBox>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="form-group row">
					<div class="col-sm-12 col-md-12">
						<label for="validationDefault03" class="form-label">Telefon No</label>
						<asp:TextBox ID="TextBox3" class="form-control"  placeholder="0-(5**)-***-****" required="required" runat="server" ></asp:TextBox>
    				</div>
				</div>
			</div>
			<div class="container">
				<div class="form-group row">
					<div class="col-sm-12 col-md-12">
						<label for="validationDefault04"  class="col-sm-12 col-md-2 col-form-label">Adres</label>
						<asp:TextBox ID="TextBox5" class="form-control" placeholder="" required="required" runat="server" ></asp:TextBox>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="form-group row">
					<div class="col-sm-12 col-md-12">
						<label for="validationDefault04"  class="col-sm-12 col-md-2 col-form-label">Email</label>
						<asp:TextBox ID="TextBox4" class="form-control" placeholder="@gmail.com" required="required" runat="server" TextMode="Email"></asp:TextBox>
					</div>
				</div>
			</div>
			<div class="container">			
				<div class="form-group row">
					<div class="col-sm-12 col-md-12">
						<asp:Button ID="Button1" CssClass="btn btn-outline-primary" runat="server" Text="Ekle" OnClick="Button1_Click" />
					</div>
				</div>
			</div>
		</form>
	</div>	
</asp:Content>