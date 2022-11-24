<%@ Page Title="Proveedores" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PageProveedor.aspx.cs" Inherits="SistemaISLAGO.Catálogos.PageProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MVProveedor" runat="server">
        <asp:View ID="VistaListadoPro" runat="server">
            <!-- SUPPLIER NAV -->
            <div class="tab-pane" style="background-color: #311b92; color: white; border-radius: 5px; margin-top:800px;">
                <center>
                    <h1><span class="glyphicon glyphicon-bell"></span>Listado Contactos de Proveedores <span class="glyphicon glyphicon-bell"></span></h1>
                </center>
            </div>
            
            <br />
            <br />
            <div class="col-md-12">
                <div class="col-md-2" style="">
                    <asp:Button ID="BotonAgre" OnClick="BotonAgre_Click" runat="server" Text="Agregar Proveedor"/>
                </div>
            </div>
        </asp:View>
        <asp:View ID="VistaAg_pro" runat="server">
            <div class="tab-pane" style="margin-top: 800px;">
                
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
