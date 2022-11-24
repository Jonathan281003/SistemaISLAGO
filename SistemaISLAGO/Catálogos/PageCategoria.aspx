<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PageCategoria.aspx.cs" Inherits="SistemaISLAGO.Catálogos.PageCategoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        <%--$(function () {
            $('#<%=FileUpload%>')
        })--%>
    </script>
    <style>
        .aki{
            height: 230px;
            width: 200px;
            margin-left: 20px;
        }
    </style>
    <asp:MultiView ID="MVCategorias" runat="server">
        <asp:View ID="VistaListadoCat"  runat="server">
            <%-- Banner dedicado a las categoriaas -INICIO --%>
            <!-- CATEGORY NAV -->
            <div class="tab-pane" style="background-color: #311b92; color: white; border-radius: 5px; margin-top:800px;">
                <center>
                    <h1><span class="glyphicon glyphicon-bell"></span>Categorias Agregadas Recientemente al Sistema <span class="glyphicon glyphicon-bell"></span></h1>
                </center>
            </div>
            <br />
                      
            <%-- CATEGORYS --%>
            <div class="tab-content">
                <%-- Featured Category --%>
                <div role="tabpanel" class="tab-pane fade in active" id="tab_one">
                    <div class="row">
                        <asp:ListView ID="ListarCategorias" runat="server">
                            <ItemTemplate>
                                <div class="abajo col-md-3 col-sm-6">
                                    <div class="category-singleArea">
                                        <div class="aki category-img">
                                            <img class="img-responsive primary_image" src="../<%#Eval("Imagen")%>" />
                                        </div>
                                        <div class="category-pd">
                                            <div class="glyphicon glyphicon-tags" style="margin-left:20px;"><%#Eval("NombCategoria") %></div>
                                        </div>                                       
                                        <%--<div class="col-md-12">
                                            <div>
                                                <asp:Button ID="btnEditar" runat="server" Text="Editar" style="padding: 5px; background: #06c3e5; color:white; border-style: none; border-radius: 5px; margin-top: -10px; margin-left: 80px;" />
                                                <asp:Button ID="btnEliminar" runat="server" Text="Inabilitar" style="padding:5px; background: #ff0000; color:white; border-style: none; border-radius: 5px; margin: 3px;" />   
                                            </div>
                                        </div>--%>
                                        <br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
            <hr />
            <%-- botones agregar, inspeccionar --%>
            <div>
                <div class="col-md-12">
                    <div class="col-md-2" style="margin-left:740px;  ">
                        <asp:Button ID="btnListCat" OnClick="btnListCat_Click" CssClass="btn btn-info pull-rigth" runat="server" Text="Lista Categorias" style="padding:5px; background: #06c3e5; color:white; border-style: none; border-radius: 5px;"/>
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnnuevo" OnClick="btnnuevo_Click" CssClass="btn btn-success pull-right" runat="server" Text="Agregar Categoria" style="padding:5px; background: #5cb85c; color:white; border-style: none; border-radius: 5px;" />
                    </div>
                </div>  
            </div>
            <br />
            
        </asp:View>
        
        <asp:View ID="VistaAgregarCategoria" runat="server">
                <div class="col-md-8" style="margin-top: 80px;">
                    <h1 class="abc text-success" style="font-size: 50px;">Nueva Categoria</h1>
                </div>
            <br />

            <%-- Boton para volver a la pagina principal --%>
            <div class="col-md-12">
                <div class="col-md-2" style="margin-left: 740px">
                    <asp:Button ID="btnReturn" OnClick="btnReturn_Click" runat="server" Text="Categorias Recientes" style="padding: 5px; background: #5cb85c; color: white; border-style: none; border-radius: 5px;"/>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnInactivos" OnClick="btnInactivos_Click" runat="server" Text="Categorias Inactivas" style="padding: 5px; background: #06c3e5; color: white; border-style: none; border-radius: 5px;" />
                </div>
            </div>

        </asp:View>

        <asp:View runat="server" ID="VistaListadoCategorias">
            <div class="tab-pane" style="background-color: #311b92; color: white; border-radius: 5px; margin-top:800px;">
                <center>
                    <h1><span class="glyphicon glyphicon-bell"></span>Listado Categorías Habilitadas<span class="glyphicon glyphicon-bell"></span></h1>
                </center>
            </div>
            <br />

            <%-- Boton para volver a la pagina principal --%>
            <div class="col-md-12">
                <div class="col-md-2" style="margin-left: 740px">
                    <asp:Button ID="btnReturn1" OnClick="btnReturn_Click" runat="server" Text="Categorias Recientes" style="padding: 5px; background: #5cb85c; color: white; border-style: none; border-radius: 5px;"/>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnInactivos1" OnClick="btnInactivos_Click" runat="server" Text="Categorias Inactivas" style="padding: 5px; background: #06c3e5; color: white; border-style: none; border-radius: 5px;" />
                </div>
            </div>

            <%-- Vista de datos en la GRID --%>
            <asp:GridView ID="GridViewCategoria"
                CssClass="table table-bordered" AllowPaging="true" OnRowCommand="GridViewCategoria_RowCommand" OnDataBound="GridViewCategoria_DataBound" PageSize="7"
                runat="server" DataKeysNames="IDCategoria" AutoGenerateColumns="false">
                <HeaderStyle BackColor="#69ed7" />
                <Columns>
                    <asp:BoundField HeaderText="Categoria" DataField="NombreCategoria" />
                    <asp:TemplateField HeaderText="Editar">
                        <ItemTemplate>
                            <asp:Button ID="btnEditar" CommandName="cmdEditar" CssClass="btn btn-info" runat="server" Text="Editar" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Inhabilitar">
                        <ItemTemplate>
                            <asp:Button ID="btnInhabilitar" CommandNage="cmdInhabilitar" CssClass="btn btn-dager" runat="server" Text="Inhabilitar" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerTemplate>
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-lg-4"></div>
                        <div class="col-lg-1" style="text-align: right;">
                            <h3>
                                <asp:Label ID="lblPaginaMedidas" runat="server" Text="Página:" CssClass="label label-info"></asp:Label>
                            </h3>
                        </div>
                        <div class="col-lg-1" style="text-align: left;">
                            <br />
                            <asp:DropDownList ID="DropCate"  Width="70px" AutoPostBack="true" OnSelectedIndexChanged="DropCate_SelectedIndexChanged" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col-lg-2" style="text-align: right;">
                            <h3>
                                <asp:Label ID="lblCatePageOf" CssClass="label label-warning" runat="server"></asp:Label></h3>
                        </div>
                        <div class="col-lg-4"></div>
                    </div>
                </PagerTemplate>
            </asp:GridView>
        </asp:View>

        <asp:View runat="server" ID="VistaCatInactivas">
            <div class="tab-pane" style="background: #311b92; color: white; border-radius: 5px; margin-top: 800px;">
                <center>
                    <h1><span class="glyphicon glyphicon-bell"></span>Listado Categorias Inavilitadas<span class="glyphicon glyphicon-bell"></span></h1>
                </center>
            </div>
            <div class="col-md-12">
                <div class="col-md-2" style="margin-left: 950px">
                    <asp:Button ID="btnReturn2" OnClick="btnReturn_Click" runat="server" Text="Categorias Recientes" style="padding: 5px; background: #5cb85c; color: white; border-style: none; border-radius: 5px;"/>
                </div>
            </div>
        </asp:View>
    </asp:MultiView>
    <%--<hr />--%>
    <br />
    <br />
    
</asp:Content>
