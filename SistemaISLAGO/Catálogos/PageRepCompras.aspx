<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PageRepCompras.aspx.cs" Inherits="SistemaISLAGO.Catálogos.PageRepCompras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MVRepCompra" runat="server">
        <asp:View ID="VistaListaRepCompras" runat="server">
            <div class="tab-pane" style="background-color: #311b92; color: white; border-radius: 5px; margin-top:480px;">
                <center>
                    <h1><span class="glyphicon glyphicon-bell"></span>Reportes Compras<span class="glyphicon glyphicon-bell"></span></h1>
                </center>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
