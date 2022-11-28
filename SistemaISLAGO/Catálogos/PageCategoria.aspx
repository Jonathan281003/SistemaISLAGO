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

            <%-- Botones retorno e inactivos --%>
            <div class="col-md-12">
                <div class="col-md-2" style="margin-left: 740px">
                    <asp:Button ID="btnReturn1" OnClick="btnReturn_Click" runat="server" Text="Categorias Recientes" style="padding: 5px; background: #5cb85c; color: white; border-style: none; border-radius: 5px;"/>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnInactivos1" OnClick="btnInactivos_Click" runat="server" Text="Categorias Inactivas" style="padding: 5px; background: #06c3e5; color: white; border-style: none; border-radius: 5px;" />
                </div>
            </div>

            <%-- Buscador de Categorias --%>
            <div class="col-md-12">
                <br />
                <div class="input-group">
                    <asp:TextBox UD="txtBuscar" placeHolder="Ingrese Categoria que desea buscar!" CssClass="form-control" runat="server"></asp:TextBox>
                    <span class="input-group-btn">
                        <asp:Button ID="btnBuscarActivos" OnClick="btnBuscarActivos_Click" CssClass="btn btn-info pull-right" runat="server" Text="Buscar" ValidationGroup="agregar"/>
                    </span>
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
            <div class="container">
                <div class="row">
                    <br />
                    <br />
                    <div class="col-md-12" style="margin-top: 25px;">
                        <center><h1 class="text-succes" style="font-size: 50px;">Categorias Inactivas</h1></center>
                        <div class="col-md-8"></div>
                        <div class="col-md-2">
                            <asp:Button ID="btnActivos" OnClick="btnActivos_Click" CssClass="btn btn-info pull-right" runat="server" Text="Categorias Activas" />
                        </div>
                    </div>
                </div>
            </div>
        </asp:View>
    </asp:MultiView>

    <asp:View runat="server" ID="VistaEdicionCat">
        <div class="container">
            <div class="row">

                <div class="col-md-12">
                    <div class="col-md-12">
                        <div class="col-md-8" style="margin-top:20px">
                            <h1 class="abc text-succes" style="font-size: 50px;">Nueva categoria</h1>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <br />
                        <asp:Button ID="btnIrlista" OnClick="btnIrlista_Click" CssClass="btn btn-success pull-right" runat="server" Text="Ver Lista Categorias" />
                    </div>
                    <div class="col-md-12">
                        <br />
                        <hr />
                    </div>

                    <div class="row">
                        <%-- Fila1 --%>
                        <div class="col-md-12">
                            <div class="col-md-1"></div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox ID="txtCodigo" CssClass="form-control" Visible="false" Enabled="false" runat="server"></asp:TextBox>
                                    <label>Nombre</label>
                                    <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="Validation" runat="server" ControlToValidate="txtNombre" ErrorMessage="*El Nombre es necesario" ValidationGroup="guardar"></asp:RequiredFieldValidator>                                    
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Descripcion</label>
                                        <asp:TextBox ID="txtDescripcion" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <asp:Button ID="btnGuardar" OnClick="btnGuardar_Click" CssClass="btn btn-primary" runat="server" Text="Guardar Articulo" ValidationGroup="Guardar" />
                                    <br />
                                    <asp:Button ID="btnActualizar" OnClick="btnActualizar_Click" Visible="false" CssClass="btn btn-warning" runat="server" Text="Actualizar Categoria" />
                                </div>
                            </div>

                            <%-- Fila2 --%>
                            <div class="col-md-12">
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <asp:Button ID="btnCanActu" OnClick="btnCanActu_Click" visible="false" CssClass="btn btn-danger" runat="server" Text="Cancelar" />
                                </div>
                            </div>

                            <%-- Fila3 --%>
                            <div class="col-md-12">
                                <br />
                                <br />
                            </div>
                            
                            <%-- Fila4 --%>
                            <div class="col-md-12">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div class="col-md-3">
                                        </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <div class="col-md-12">
                                </div>
                            </div>

                            <%-- Fila5 --%>
                            <div class="col-md-12">
                                <br />
                                <br />
                            </div>

                            <%-- Fila6 --%>
                            <div class="col-md-12">
                                <div class="col-md-1"></div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Imagen</label>
                                        <br />
                                        <asp:Image ID="Preview" Width="40%" Height="50%" ImageUrl="~/Content/img/Categoría/CategoryDefault.png" runat="server"></asp:Image>
                                        <asp:HiddenField ID="HiddenField" runat="server" />
                                        <asp:FileUpload ID="FileUploadCategoria" runat="server" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Estado</label>
                                        <asp:CheckBox ID="chkEstado" Checked="true" runat="server" />
                                    </div>
                                </div>
                                <div class="col-md-3"></div>
                            </div>

                            <%-- Fila7 --%>
                            <div class="col-md-12">
                                <div class="col-md-2"></div>
                                <div class="col-md-2">
                                </div>
                                <div class="col-md-2">
                                </div>
                                <div class="col-md-2">
                                </div>
                                <div class="col-md-2">
                                    <asp:Button ID="btnVerCombo" Visible="false" CssClass="btn btn-warning" runat="server" Text="Ver Combo" Enabled="false" />
                                </div>
                                <div class="col-md-2"></div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </asp:View>
    <%--<hr />--%>
    <br />
    <br />
    
</asp:Content>
