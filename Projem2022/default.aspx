 <%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Projem2022._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container-fluid">
            <%Projem2022.UrunCRUD onecikanurun = new Projem2022.UrunCRUD();
                System.Data.DataTable dtonecikan = new System.Data.DataTable();
                dtonecikan = onecikanurun.kategoriyegoreliste("Elbise");%>
            <div class="row">
                <div class="col-lg-6 p-0">
                    <div class="categories__item categories__large__item set-bg"  data-setbg="admin/<%=dtonecikan.Rows[0][2]%>" 
                       />
                    <div class="categories__text">
                        <h1><%=dtonecikan.Rows[0][1]%></h1>
                        <p>Sezon İndirimi Başladı Seçili Ürünlerde 8-26 Haziran %50 İndirim </p>
                        <a href="tumurunler.aspx">Satın Al</a>
                    </div>
                </div>
            </div>
          <div class="col-lg-6">
            <div class="row">
               <%for (int i = 1; i < dtonecikan.Rows.Count; i++) /*birinci active de kullanıldı o yüzden int i =1*/
                 {%>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg"  data-setbg="admin/<%=dtonecikan.Rows[i][2]%>">
                            <div class="categories__text">
                                <h4><%=dtonecikan.Rows[i][1]%></h4>
                                <p></p>
                                <a href="tumurunler.aspx">Satın Al</a>
                            </div>
                        </div>
                    </div> 
                  <%} %>
            </div>
           </div>
                   <%-- <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="img/categories/onecikan1.jpeg">
                            <div class="categories__text">
                                <h4>Elbiseler</h4>
                                <p></p>
                                <a href="#">Satın Al</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="img/categories/onecikan2.jpeg">
                            <div class="categories__text">
                                <h4>Ayın Trendleri</h4>
                                <p></p>
                                <a href="#">Satın Al</a>
                            </div>
                        </div>
                    </div>--%>
                    <%--<div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="img/categories/onecikan5.jpeg">
                            <div class="categories__text">
                                <h4>Günlük Moda</h4>
                                <p></p>
                                <a href="#">Satın Al</a>
                            </div>
                        </div>
                    </div>--%>
        </div>
</section>
<!-- Categories Section End -->
    <!-- Product Section Begin -->
     <%Projem2022.UrunCRUD yeniler = new Projem2022.UrunCRUD();
         System.Data.DataTable yenidt = new System.Data.DataTable();
         yenidt = yeniler.yeniurunlerliste();%>

<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>YENİ ÜRÜNLER</h4>
                </div>
            </div>
            <div class="col-lg-8 col-md-8">
                <%--<ul class="filter__controls">
                    <li class="active" data-filter="*">All</li>
                    <li data-filter=".women">Women’s</li>
                    <li data-filter=".men">Men’s</li>
                    <li data-filter=".kid">Kid’s</li>
                    <li data-filter=".accessories">Accessories</li>
                    <li data-filter=".cosmetic">Cosmetics</li>
                </ul>--%>
            </div>
        </div>
        <div class="row property__gallery">
            <%for (int i = 0; i < yenidt.Rows.Count; i++)
              {%>
                <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="admin/<%=yenidt.Rows[i][8] %>">
                        <div class="label new">Yeni</div>
                        <ul class="product__hover">
                            <li><a href="admin/<%=yenidt.Rows[i][8] %>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="urundetay.aspx?prmurundetay=<%=yenidt.Rows[i][0] %>"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#"><%=yenidt.Rows[i][2] %></a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price"><%=yenidt.Rows[i][3]+" TL" %></div>
                    </div>
                </div>
            </div>
           <% } %>
            
           
        </div>
    </div>
</section>
    <!-- Banner Section Begin -->
<section class="banner set-bg" data-setbg="img/banner/banner-1.jpg">
    <div class="container">
        <div class="row">
             <%Projem2022.UrunCRUD banner = new Projem2022.UrunCRUD();
                System.Data.DataTable dtbanner = new System.Data.DataTable();
                dtbanner = banner.kategoriyegoreliste("Elbise");%>
            <div class="col-xl-7 col-lg-8 m-auto">
                <div class="banner__slider owl-carousel">
             <%for (int i = 0; i < dtbanner.Rows.Count; i++)
                {%>
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>Sahra Collection</span>
                            <h1><%=dtbanner.Rows[i][1] %></h1>
                            <a href="tumurunler.aspx">Keşfet</a>
                        </div>
                    </div>
            <% } %>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Banner Section End -->

    <!-- Trend Section Begin -->
<section class="trend spad">
    <div class="container">
        <div class="row">
             <%Projem2022.UrunCRUD etiketurunleri = new Projem2022.UrunCRUD();
                System.Data.DataTable dtetiket = new System.Data.DataTable();
                dtetiket = etiketurunleri.etiketegoreliste("En Çok Satanlar");%>

             
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>En Çok Satanlar</h4></div>
                    <%for (int i = 0; i < dtetiket.Rows.Count; i++)
                              {%>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                  <img style="width:100%; width:90px; height:70px;" src="admin/<%=dtetiket.Rows[i][8]%>" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6><%=dtetiket.Rows[i][2]%></h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price"><%=dtetiket.Rows[i][3]+"TL"%></div>
                        </div>
                    </div>
                   <% } %>
                </div>
            </div>
              <%Projem2022.UrunCRUD onecikanurunler = new Projem2022.UrunCRUD();
                System.Data.DataTable dtonecikanlar = new System.Data.DataTable();
                dtonecikanlar = onecikanurunler.etiketegoreliste("Öne Çıkanlar");%>

            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Öne Çıkanlar</h4>
                    </div>
                     <%for (int i = 0; i < dtonecikanlar.Rows.Count; i++)
                              {%>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img style="width:100%; width:90px; height:70px;" src="admin/<%=dtonecikanlar.Rows[i][8]%>" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6><%=dtonecikanlar.Rows[i][2]%></h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price"><%=dtonecikanlar.Rows[i][3]+"TL"%></div>
                        </div>
                    </div>
                      <% } %>
                </div>
            </div>
              <%Projem2022.UrunCRUD firsaturunleri = new Projem2022.UrunCRUD();
                System.Data.DataTable dtfirsat = new System.Data.DataTable();
                dtfirsat = firsaturunleri.etiketegoreliste("Fırsat Ürünü");%>

            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Fırsat Ürünleri</h4>
                    </div>
                     <%for (int i = 0; i < dtfirsat.Rows.Count; i++)
                              {%>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img style="width:100%; width:90px; height:70px;" src="admin/<%=dtfirsat.Rows[i][8]%>" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6><%=dtfirsat.Rows[i][2]%></h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price"><%=dtfirsat.Rows[i][3]+"TL"%></div>
                        </div>
                    </div>
                      <% } %>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Trend Section End -->
</asp:Content>
