<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="Projem2022.sepet" %>
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
                        <span>Sepet</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Cart Section Begin -->
    <section class="shop-cart spad">
        <div class="container">
            <div class="row">
                <%Projem2022.SepetCRUD sepettekiurun = new Projem2022.SepetCRUD();
                    Projem2022.UrunCRUD urundetayi = new Projem2022.UrunCRUD();
                    System.Data.DataTable dt = sepettekiurun.sepetgoster(Session["uye"].ToString());%>
                <div class="col-lg-12">
                    <div class="shop__cart__table">
                        <table>
                            <thead>
                                <tr>
                                   
                                    <th>Ürün </th>
                                   
                                    <th>Fiyat</th>
                                    <th>Adet</th>
                                    <th>Toplam</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (int i = 0; i < dt.Rows.Count; i++)
                                     {
                                         Projem2022.Urun urunum = new Projem2022.Urun();Projem2022.UrunCRUD 
                                            urundetayi2 = new Projem2022.UrunCRUD();
                                         urunum = urundetayi2.urungoster(dt.Rows[i][1].ToString());%>
                                    
                                    <tr> 
                                    <td class="cart__product__item">
                                       <img  width="60" src="admin/<%=urunum.Uresim %>" alt="">
                                       <div class="cart__product__item__title">
                                       <h6><%=urunum.Urunadi %></h6>
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price"><%=urunum.Ufiyat %></td>
                                    <td class="cart__quantity">
                                        <div class="pro-qty">
                                            <input type="text" value="1">
                                        </div>
                                    </td>
                                      
                                    <td class="cart__total"><%=urunum.Ufiyat+" TL" %></td>
                                    <td class="cart__close"><span class="icon_close"></span></td>
                                </tr>
                               <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="cart__btn">
                        <a href="tumurunler.aspx">Alışverişe Devam Et</a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="cart__btn update__btn">
                        <a href="#"><span class="icon_loading"></span> Update cart</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="discount__content">
                        <h6>İNDİRİM KODLARI</h6>
                        <form action="#">
                            <input type="text" placeholder="Kupon kodunuzu girin">
                            <button type="submit" class="site-btn">Uygula</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-2">
                    <div class="cart__total__procced">
                        <h6> Sepet Toplam</h6>
                        <ul>
                            <li>Subtotal <span>$ 750.0</span></li>
                            <li>Total <span>$ 750.0</span></li>
                        </ul>
                        <a href="#" class="primary-btn">Satın Al</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Cart Section End -->

</asp:Content>
