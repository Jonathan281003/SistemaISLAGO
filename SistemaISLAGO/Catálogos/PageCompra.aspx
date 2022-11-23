<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PageCompra.aspx.cs" Inherits="SistemaISLAGO.Catálogos.PageCompra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MVCompra" runat="server">
        <asp:VieW ID="VistaListadoCompra" runat="server">
            <div class="tab-pane" style="background-color: #311b92; color: white; border-radius: 5px; margin-top:800px;">
                <center>
                    <h1><span class="glyphicon glyphicon-bell"></span>Listado Compras Realizadas <span class="glyphicon glyphicon-bell"></span></h1>
                </center>
            </div>
        </asp:VieW>
    </asp:MultiView>
</asp:Content>
