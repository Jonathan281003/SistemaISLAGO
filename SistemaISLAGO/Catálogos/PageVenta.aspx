<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PageVenta.aspx.cs" Inherits="SistemaISLAGO.Catálogos.PageVenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MVVenta" runat="server">
        <asp:View ID="VisatListadoVent" runat="server">
            <div class="tab-pane" style="background-color: #311b92; color: white; border-radius: 5px; margin-top:480px;">
                <center>
                    <h1><span class="glyphicon glyphicon-bell"></span>Listado ventas relaizadas<span class="glyphicon glyphicon-bell"></span></h1>
                </center>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
