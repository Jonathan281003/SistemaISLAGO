<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PageAyuda.aspx.cs" Inherits="SistemaISLAGO.Catálogos.PageAyuda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView runat="server" ID="MVAyuda">
        <asp:View runat="server" ID="VistaAyuda">
            <div class="tab-pane" style="background-color: #311b92; color: white; border-radius: 5px; margin-top:480px;">
                <center>
                    <h1><span class="glyphicon glyphicon-bell"></span>¿En que puedo ayudarte?<span class="glyphicon glyphicon-bell"></span></h1>
                </center>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
