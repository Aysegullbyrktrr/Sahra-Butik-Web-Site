<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="u_s_guncelle.aspx.cs" Inherits="Projem2022.admin.u_s_guncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">
							<h4><a href="index.aspx">Anasayfa</a></h4>
						</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item" aria-current="page">Üyeler</li>
									<li class="breadcrumb-item active"><a href="ulist.aspx">Üye Listele</a></li>
								</ol>
							</nav>				
					</div>					
				</div>
			</div>
	<div class="card-box mb-30">
					<div class="pd-20">
						<h4 class="text-blue h4">Üye Güncelleme/Silme Ekranı</h4>
					</div>
					<div class="pb-20">
						<table class="checkbox-datatable table nowrap">					
							<thead>
								<tr>
									<th><div class="dt-checkbox">
											<input type="checkbox" name="select_all" value="1" id="example-select-all">
											<span class="dt-checkbox-label"></span>
										</div>
									</th>
									<th>Detaylı incele</th>									
									<th>Ad</th>									
									<th>Soyad</th>
									<%--<th>Telefon numarası</th>--%>
									<th>Email</th>
									<th>Güncelle</th>
									<th>Sil</th>
								</tr>
							</thead>
							<% Projem2022.admin.UyeCRUD uye = new Projem2022.admin.UyeCRUD();
                                System.Data.DataTable dt = new System.Data.DataTable();
                                dt = uye.liste();
                                %>

							<tbody>
								<%for (int i = 0; i < dt.Rows.Count; i++)
                                          {%>
								<tr>
									<td></td>
									<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#gprm<%=dt.Rows[i][0] %>">Detaylı İncele</button></td>
								
                                    <td><%=dt.Rows[i][0] %></td>                                  
                                    <td><%=dt.Rows[i][1] %></td>
                                    <%--<td><%=dt.Rows[i][2] %></td>   --%>                               
                                    <td><%=dt.Rows[i][4] %></td>
									<%Session["kimisil"] = dt.Rows[i][4]; %>

									<td><a href="u_guncel_ayrinti.aspx?guncelle=<%=dt.Rows[i][4] %>" class="micon fa fa-refresh"></a></td>										</td>
									<td><a href="" class="micon fa fa-trash" data-toggle="modal" 
                                                      data-target="#deleteModal<%=dt.Rows[i][4] %>"> </a></td>
								</tr>								
								<%} %>

							</tbody>
						</table>
					</div>
				</div>
																						
	
								<%for (int i = 0; i < dt.Rows.Count; i++)
								  {%>
										<div id="gprm<%=dt.Rows[i][0] %>" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
										  <div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">

												<div class="modal-header">
											<h4 class="modal-title" id="myLargeModalLabel">Üyenin detaylı bilgileri:</h4>
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										</div>

											   <div class="modal-body">
												
												<div class="table-responsive">
												<table class="table table-striped">
																							
												
												<tr>
												<td>Ad</td>
												<td>:</td>
												<td><%=dt.Rows[i][0] %></td>
												</tr>

												<tr>
												<td>Soyad</td>
												<td>:</td>
												<td><%=dt.Rows[i][1] %></td>
												</tr>
												
												<tr>
												<td>Telefon Numarası</td>
												<td>:</td>
												<td><%=dt.Rows[i][2] %></td>
												</tr>
													
												<tr>
												<td>Email</td>
												<td>:</td>
												<td><%=dt.Rows[i][4] %></td>
												</tr>
												
												

												

												</table>
													
												</div>
												   

											   </div>

													<div class="modal-footer">
														<button type="button" class="btn btn-primary" data-dismiss="modal">Kapat</button>
														<%--<button type="button" class="btn btn-primary">Save changes</button>--%>
													</div>
																						
											</div>
										  </div>
										</div>
								<%} %> 


							
		</div>
	</div>
	                    </div>
    <%for (int i = 0; i < dt.Rows.Count; i++)
        {%>
     <%--<div class="modal fade" id="deleteModal <% =dt.Rows[i][4]%>"  tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Silmek İstediğnize Emin misiniz</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Kapat">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Silmek için Tamama tıklayınız</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">İptal</button>
                    <a class="btn btn-primary" href="uyesil.aspx?sil=<%=dt.Rows[i][4] %>">Tamam</a>
                </div>
            </div>
        </div>
    </div>--%>
    <div class="modal fade" id="deleteModal<%=dt.Rows[i][4] %>" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header" style="background-color:#58d8a3">
          <button type="button" class="close" data-dismiss="modal" style="color:white;">&times;</button>
          <%--<h4 class="modal-title">Modal Header</h4>--%>
        </div>
        <div class="modal-body">
          <h6><b>'<%=dt.Rows[i][0] %> <%=dt.Rows[i][1] %>'</b> adlı müşteriyi silmek istiyor musun?</h6>
        </div>
        <div class="modal-footer">
            <a href="u_s_guncelle.aspx?sil=<%=dt.Rows[i][4] %>">
                <button type="button" class="btn btn-success">Evet</button>
            </a>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Hayır</button>
        </div>
      </div>
    </div>
  </div>
    <%} %>

    <div class="modal extended-modal fade no-display" id="silb_li" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"">
            <div class="modal-dialog">
                        <div class="modal-content" style="background-color:#00b74a;">
                            <div class="modal-body" style="text-align:center;">
                                <i class="fa-solid fa-circle-check"></i> 
                                <asp:Label ForeColor="White" Font-Size="Larger" ID="Label4" runat="server" Text="">
                                    Silme işlemi başarılı!
                                </asp:Label>
                                <p> </p>
                            </div>
                        </div>
            </div>
        </div>
        <div class="modal extended-modal fade no-display" id="silb_siz" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                        <div class="modal-content" style="background-color:#c70505;">
                            <div class="modal-body" style="text-align:center;">
                                <i class="fa-solid fa-circle-check"></i> 
                                <asp:Label ForeColor="White" Font-Size="Larger" ID="Label5" runat="server" Text="">
                                    Silme işlemi gerçekleştirilemedi!
                                </asp:Label>
                                <p> </p>
                            </div>
                        </div>
            </div>
        </div>
</asp:Content>
