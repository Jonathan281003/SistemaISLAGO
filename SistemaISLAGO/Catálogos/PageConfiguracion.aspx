<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PageConfiguracion.aspx.cs" Inherits="SistemaISLAGO.Catálogos.PageConfiguracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MVConfiguration" runat="server">
        <asp:View runat="server"  ID="VistaConfiguracion">
            <div class="tab-pane" style="background-color: #311b92; color: white; border-radius: 5px; margin-top:480px;">
                <center>
                    <h1><span class="glyphicon glyphicon-bell"></span>Configuracion de cuentas<span class="glyphicon glyphicon-bell"></span></h1>
                </center>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
