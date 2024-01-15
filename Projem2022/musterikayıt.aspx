<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="musterikayıt.aspx.cs" Inherits="Projem2022.musterikayıt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i>Ana Sayfa</a>
                        <span>Kayıt Ol</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <section class="checkout spad">
        <div class="container">
            <div class="row"></div>
            	<div id="basarili" runat="server" class="alert alert-success alert-dismissible fade show" role="alert" visible="false">
					<strong>Başarılı işlem!</strong> Girilen bilgiler kaydedilmiştir.
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
				    </button>
				</div>
            <form action="#" class="checkout__form">
                <div class="row">
                    <div class="col-lg-8">
                        <h5>Üye Kayıt </h5>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                   <p class="text-start"> <span>*</span><asp:Label ID="Label1" runat="server" Text="T.C Kimlik No"></asp:Label></p>
                                    <asp:TextBox ID="TextBox1" ValidationGroup="kayit" runat="server"></asp:TextBox>
                                    <br ><asp:RequiredFieldValidator ValidationGroup="kayit" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*T.C No alanı boş bırakılamaz!" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p class="text-start"> <span>*</span><asp:Label ID="Label2" runat="server" Text="Kullanıcı Adı"></asp:Label></p>
                                    <asp:TextBox ID="TextBox2" ValidationGroup="kayit" runat="server"></asp:TextBox>
                                     <br ><asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="kayit" runat="server" ErrorMessage="*Kullanıcı Adı alanı boş bırakılamaz!" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p class="text-start"> <span>*</span><asp:Label ID="Label3" runat="server" Text="Ad"></asp:Label></p>
                                    <asp:TextBox ID="TextBox3" ValidationGroup="kayit" runat="server"></asp:TextBox>
                                     <br ><asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="kayit" runat="server" ErrorMessage="*Ad alanı boş bırakılamaz!" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p class="text-start"> <span>*</span><asp:Label ID="Label4" runat="server" Text="Soyad"></asp:Label></p>
                                    <asp:TextBox ID="TextBox4" ValidationGroup="kayit" runat="server"></asp:TextBox>
                                     <br ><asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="kayit" runat="server" ErrorMessage="*Soyadı alanı boş bırakılamaz!" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p class="text-start"> <span>*</span><asp:Label ID="Label5" runat="server" Text="Şifre"></asp:Label></p>
                                    <asp:TextBox ID="TextBox5" ValidationGroup="kayit" runat="server" TextMode="Password"></asp:TextBox>
                                     <br ><asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="kayit" runat="server" ErrorMessage="*Şifre alanı boş bırakılamaz!" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p class="text-start"> <span>*</span><asp:Label ID="Label6" runat="server" Text="Email Adresi"></asp:Label></p>
                                    <asp:TextBox ID="TextBox6" ValidationGroup="kayit" runat="server"></asp:TextBox>
                                     <br ><asp:RequiredFieldValidator ID="RequiredFieldValidator6"  ValidationGroup="kayit" runat="server" ErrorMessage="*Email alanı boş bırakılamaz!" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                     <p></p>
                                     <asp:Button ID="Button1" runat="server" ValidationGroup="kayit" Cssclass="btn btn-dark btn-lg" Text="Kaydet" OnClick="Button1_Click" />
                                     
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p></p>
                                     <asp:Button ID="Button2" runat="server" Text="Doğrula" OnClick="Button2_Click" Cssclass="btn btn-info" ValidationGroup="mdogrula" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    
</asp:Content>
