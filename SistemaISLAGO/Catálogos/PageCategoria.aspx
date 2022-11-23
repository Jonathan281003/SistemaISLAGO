<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PageCategoria.aspx.cs" Inherits="SistemaISLAGO.Catálogos.PageCategoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
            <center>
                <div class="tab-pane" style="color:green; margin-top: 700px;">
                    <h1>Nueva Categoria.</h1>
                </div>
            </center>
            <br />

            <%-- Boton para volver a la pagina principal --%>
            <div class="col-md-12">
                <div class="col-md-2" style="margin-left: 950px">
                    <asp:Button ID="btnReturn" OnClick="btnReturn_Click" runat="server" Text="Articulos Recientes" />
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
                <div class="col-md-2" style="margin-left: 950px">
                    <asp:Button ID="Button1" OnClick="btnReturn_Click" runat="server" Text="Articulos Recientes" />
                </div>
            </div>

        </asp:View>
    </asp:MultiView>
    <%--<hr />--%>
    
</asp:Content>
