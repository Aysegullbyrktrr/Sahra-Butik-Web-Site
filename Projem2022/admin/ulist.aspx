<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="ulist.aspx.cs" Inherits="Projem2022.admin.ulist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card-box pd-20 height-100-p mb-30">
    <div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4><a href="index.aspx">Ana Sayfa</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="ugiris.aspx">Üyeler</a></li>
									<li class="breadcrumb-item active" aria-current="page">Üye Listele</li>
								</ol>
							</nav>
						</div>
						</div>
		</div>
    </div>
	<div class="pd-20 card-box mb-30">
					<div class="clearfix">
						<div class="pull-left">
						<%--	<h4 class="text-blue h4"></h4>
							<p class="mb-30">All bootstrap element classies</p>--%>
						</div>
						<div class="pull-right">
							<%--<a href="#basic-form1" class="btn btn-primary btn-sm scroll-click" rel="content-y"  data-toggle="collapse" role="button"><i class="fa fa-code"></i> Source Code</a>--%>
						</div>
	<div class="card-box mb-30">
					<div class="pd-20">
						<h4 class="text-blue h4">Üye Görüntüleme Ekranı</h4>
					</div>
					<div class="pb-20">
						<table class="checkbox-datatable table nowrap">					
							<thead>
								<tr>
									<th><div class="dt-checkbox">
											<input type="checkbox" name="select_all" value="1" id="example-select-all">
											<%--<span class="dt-checkbox-label"></span>--%>
										</div>
									</th>
									
									<th>Detaylı incele</th>	
									
									<th>Ad</th>									
									<th>Soyad</th>
									<th>Telefon numarası</th>
									<th>Email</th>
									
									<th></th>
									<th></th>
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
                                    <td><%=dt.Rows[i][2] %></td>
                                    <%--<td><%=dt.Rows[i][3] %></td> --%>                                 
                                    <td><%=dt.Rows[i][4] %></td>                                    
									<%--<td><a href="u_s_guncelle.aspx?prm=<%=dt.Rows[i][0] %>" class="btn btn-warning">Güncelle</a></td>										</td>
									<td><a href="" class="btn btn-danger">Sil</a></td>--%>
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
				
</asp:Content>
