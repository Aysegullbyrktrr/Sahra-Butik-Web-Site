<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="urunekle.aspx.cs" Inherits="Projem2022.admin.urunekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
		<div class="pd-ltr-20">
	
	
			<div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">
							<h4><a href="index.aspx">Anasayfa</a></h4>
						</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item" aria-current="page">Ürün</li>
									<li class="breadcrumb-item active"><a href="uekle.aspx">Ürün Ekle</a></li>
								</ol>
							</nav>
					</div>					
				</div>
			</div>

					<div id="kayitbasarili" runat="server" class="alert alert-success alert-dismissible fade show" role="alert" visible="false">
									<strong>Başarılı işlem!</strong> Girilen bilgiler kaydedilmiştir.
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									 <span aria-hidden="true">&times;</span>
								</button>
								</div>

					<div id="kayithatali" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert" visible="false">
									<strong>Hatalı işlem!</strong> Kayıt sırasında bir hata oluştu işlemi daha sonra tekrar deneyin.
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									 <span aria-hidden="true">&times;</span>
								</button>
								</div>
					
						
					<div id="y_kat_ekle" runat="server" class="alert alert-success alert-dismissible fade show" role="alert" visible="false">
									<strong>Başarılı işlem!</strong> Yeni girilen Kategori bilgileri kaydedilmiştir.
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									 <span aria-hidden="true">&times;</span>
								</button>
								</div>
	
				

					

				<div class="pd-20 card-box mb-30">

					<div class="clearfix">
						<div class="pull-left">
							<h4 class="text-blue h4">Ürün ekleme ekranı</h4>
							<p class="mb-30">Ürün bilgilerini lütfen doğru giriniz.</p>
						</div>
						
					</div>

					<form>
														
							 <div class="container">
							<div class="form-group row">
							<div class="col-sm-12 col-md-12">
		<%-- <label for="validationDefault01"   class="col-sm-12 col-md-2 col-form-label">Kategori</label>	--%>		
			<div>	 <label for="validationDefault01"  class="col-sm-12 col-md-2 col-form-label">Kategori</label></div>
			<asp:DropDownList ID="DropDownList1" runat="server" required class="custom-select col-8" >
                <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                <asp:ListItem Value="1">Elbise</asp:ListItem>
                <asp:ListItem Value="2">Tunik</asp:ListItem>
                <asp:ListItem Value="3">Abiye</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>									
		<asp:Label ID="Label4" runat="server" Text="Yeni Kategori ekle"  class="btn btn-primary col-4-form-label" data-toggle="modal" data-target="#y_kat_ekle" causesvalidation="false"></asp:Label>
								
							</div></div></div>

																		
						 <div class="container">
							<div class="form-group row">
						
							<div class="col-sm-12 col-md-12">
		 <label for="validationDefault02"  class="col-sm-12 col-md-2 col-form-label">Ürün Ad</label>
		<asp:TextBox ID="TextBox1" class="form-control" placeholder="" required runat="server"></asp:TextBox>
								</div>
							</div></div>
						 <div class="container">
						<div class="form-group row">
						
							<div class="col-sm-12 col-md-12">
		 <label for="validationDefault03"  class="col-sm-12 col-md-2 col-form-label">Ürün Fiyat</label>
		<asp:TextBox ID="TextBox2" class="form-control" placeholder="" required runat="server"></asp:TextBox>
								</div>
							</div></div>
						 <div class="container">
						<div class="form-group row">
						
							<div class="col-sm-12 col-md-12">
		 <label for="validationDefault07"  class="col-sm-12 col-md-2 col-form-label">Kdv</label>
								<div class="col-md-6 col-sm-12">
									
									
				 <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="1" Text="%1" Checked="True" /> 
				<asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="%8" />
				<asp:RadioButton ID="RadioButton3" runat="server" GroupName="1" Text="%18" />
								
									
								</div>
				
								</div>
							</div></div>
						 <div class="container">
						<div class="form-group row">
						
							<div class="col-sm-12 col-md-12">
		 <label for="validationDefault04"  class="col-sm-12 col-md-2 col-form-label">Barkod</label>
		<asp:TextBox ID="TextBox3" class="form-control" placeholder="" required runat="server"></asp:TextBox>
								</div>
							</div>
							 </div>
						 <div class="container">
						<div class="form-group row">
						
							<div class="col-sm-12 col-md-12">
		 <label for="validationDefault05"  class="col-sm-12 col-md-2 col-form-label">Stok Kod</label>
		<asp:TextBox ID="TextBox4" class="form-control" placeholder="" required runat="server"></asp:TextBox>
								</div>
							</div></div>
						 <div class="container">
						<div class="form-group row">
						
							<div class="col-sm-12 col-md-12">
		 <label for="validationDefault06"  class="col-sm-12 col-md-2 col-form-label">Stok Adet</label>
		<asp:TextBox ID="TextBox6" class="form-control" placeholder="" required runat="server"></asp:TextBox>
								</div>
							</div></div>
						 <div class="container">
						<div class="form-group row">
						
							<div class="col-sm-12 col-md-12">
		 <label for="validationDefault07"  class="col-sm-12 col-md-2 col-form-label">Stok Durum</label>
								<div class="col-md-6 col-sm-12">
									
									
				 <asp:RadioButton ID="RadioButton4" runat="server"  GroupName="2" Text="Stok Var" Checked="True" /> 
				<asp:RadioButton ID="RadioButton5" runat="server" GroupName="2" Text="Stok Yok" />
										
								
									
								</div>
				
								</div>
							</div></div>
						 <div class="container">
						<div class="form-group row">
						
							<div class="col-sm-12 col-md-12">
		 <label for="validationDefault08"  class="col-sm-12 col-md-2 col-form-label">Ürün Resim</label>
							
      	<asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required />
							</div>
		
							</div></div>
						<%--<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">Ürün resmi</label>
							
							<div class="col-sm-6 col-md-5">								
								<asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
							</div>
							
							<div class="col-sm-6 col-md-5 col-form-label">
								<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Resim seçimi alanı boş bırakılamaz." ControlToValidate="FileUpload1" Font-Size="Small" ForeColor="#EF5A5A" ValidationGroup="kitapkayit"></asp:RequiredFieldValidator>
							</div>														
						</div>--%>	
						 <div class="container">

						<div class="form-group row">
							<div class="col-sm-6 col-md-5">	
								<asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click" ValidationGroup="urunkayit" />
							</div>															
						</div></div>

				<%--	<%--kategori ekle modal başlangıç--%>	
							
							<div class="modal fade bs-example-modal-lg" id="y_kat_ekle" tabindex="-1" role="form" aria-labelledby="myLargeModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-lg modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="modal-title" id="y_kat_ekle">Yeni Kategori ekle</h4>
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										</div>
										<div class="modal-body">		
											
											<div class="form-group row">
						
		 <label   class="col-sm-12 col-md-2 col-form-label">Kategori No</label>
					<div class="col-sm-12 col-md-6">
		<asp:TextBox ID="TextBox5" class="form-control" placeholder="" runat="server"></asp:TextBox>
					</div>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Bu Alan Boş Geçilemez" ControlToValidate="TextBox5" ValidationGroup="katekle" ForeColor="#CC0000"></asp:RequiredFieldValidator>
							</div>

						<div class="form-group row">		
		   <label class="col-sm-12 col-md-2 col-form-label">Kategori Adı</label>
						<div class="col-sm-12 col-md-6">
														
			<asp:TextBox ID="TextBox8" runat="server" class="form-control" type="text"></asp:TextBox>
				     	</div>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Bu Alan Boş geçilemez" ControlToValidate="TextBox8" ValidationGroup="katekle" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	                 </div>

									<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">Kategori Etiket</label>
							<div class="col-sm-12 col-md-6">
							<asp:TextBox ID="TextBox7" runat="server" class="form-control" type="text"></asp:TextBox>
													</div>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Bu Alan Boş geçilemez" ControlToValidate="TextBox7" ValidationGroup="katekle" ForeColor="#CC0000"></asp:RequiredFieldValidator>
							</div>
													<div class="form-group row">
									
							<label class="col-sm-12 col-md-2 col-form-label">Kategori Resmi</label>
							<div class="col-sm-12 col-md-6">
								<asp:FileUpload ID="FileUpload2" runat="server" />	
							
													</div>
							
													<%--<div class="col-sm-6 col-md-5 col-form-label">
														<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Yazar adı alanı boş bırakılamaz." ControlToValidate="TextBox5" Font-Size="Small" ForeColor="#EF5A5A" ValidationGroup="yazarkayit"></asp:RequiredFieldValidator>
													</div>														
												</div>--%>

												


										</div>
										<div class="modal-footer">
											<asp:Button ID="Button4" runat="server" Text="İptal" class="btn btn-secondary" data-dismiss="modal"/>
											<asp:Button ID="Button5" runat="server" Text="Kaydet" OnClick="Button5_Click" CssClass="btn btn-primary" ValidationGroup="katekle" formnovalidate="formnovalidate"/>
											
										</div>
									</div>
								</div>
							</div>
					
					


					

					</form>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
