<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminSelection.aspx.cs" Inherits="Team_Players_App.AdminSelection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-10 col-md-offset-1" style="padding-top: 10px">
            <div class="form-group">
                <asp:Button Text="Teams Editor" ID="btnsubmit" OnClick="Teams_Click" CssClass="btn btn-primary" Width="150px" runat="server" />
                <asp:Button Text="Player Viewer" ID="btnupdate" OnClick="Player_Click" CssClass="btn btn-primary" Width="150px" runat="server" />
            </div>
        </div>
    </div>

</asp:Content>
