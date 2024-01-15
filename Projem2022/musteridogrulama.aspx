<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="musteridogrulama.aspx.cs" Inherits="Projem2022.musteridogrulama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="default.aspx"><i class="fa fa-home"></i>Ana Sayfa</a>
                        <span>Doğrulama</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
               
            </div>
            <form action="#" class="checkout__form">
                <div class="row">
                    <div class="col-lg-8">
                        <h5>Üye Kayıt Doğrulama </h5>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">

                        
                           
                           
                             <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p class="text-start"> <span>*</span><asp:Label ID="Label6" runat="server" Text="Email Adresiniz"></asp:Label></p>
                                    <asp:TextBox ID="TextBox1" ValidationGroup="kayit" runat="server"></asp:TextBox>
                                     <br ><asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ValidationGroup="dogrula" runat="server" ErrorMessage="*Email alanı boş bırakılamaz!" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                     <p class="text-start"> <span>*</span><asp:Label ID="Label7" runat="server" Text="Doğrulama Kodunuz"></asp:Label></p>
                                    <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="dogrula"></asp:TextBox> <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Doğrula" ValidationGroup="dogrula" />
                                     <br ><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Doğrulama Kod Alanı boş bırakılamaz!" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                        
                </form>
            </div>
        </section>
</asp:Content>
