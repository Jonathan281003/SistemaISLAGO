<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PageRepVentas.aspx.cs" Inherits="SistemaISLAGO.Catálogos.PageRepVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MVRepVentas" runat="server">
        <asp:View ID="VistaListadoRepVentas" runat="server">
            <div class="tab-pane" style="background-color: #311b92; color: white; border-radius: 5px; margin-top:800px;">
                <center>
                    <h1><span class="glyphicon glyphicon-bell"></span>Reportes Ventas<span class="glyphicon glyphicon-bell"></span></h1>
                </center>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
