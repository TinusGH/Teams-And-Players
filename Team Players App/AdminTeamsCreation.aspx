<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminTeamsCreation.aspx.cs" Inherits="Team_Players_App.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Teams Editor</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                            <div class="row">

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Name" runat="server" />
                                        <asp:TextBox ID="Name" runat="server" Enabled="true" CssClass="form-control input-group-sm" placeholder="Team Name" />
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Created Date" runat="server" />
                                        <asp:TextBox ID="CreatedDate" runat="server" Enabled="true" TextMode="Date" CssClass="form-control input-group-sm" placeholder="Date"/>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Is Active" runat="server" />
                                        <asp:TextBox ID="IsActive" runat="server" Enabled="true"  CssClass="form-control input-group-sm" placeholder="Y / N"/>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1" style="padding-top: 10px">
                                        <div class="form-group">
                                            <asp:Button Text="Submit" ID="btnsubmit" OnClick="btnsubmit_Click" CssClass="btn btn-primary" Width="150px" runat="server" />
                                            <asp:Button Text="Update" ID="btnupdate" OnClick="btnupdate_Click" CssClass="btn btn-primary" Width="150px" runat="server" />
                                            <asp:Button Text="Delete" ID="btndelete" OnClick="btndelete_Click" CssClass="btn btn-danger" Width="150px" runat="server" />
                                            <asp:Label Text="" ForeColor="White" BackColor="Green" ID="lblmessage" CssClass="label label-success" runat="server" />
                                        </div>
                                    </div>
                                </div>

                                <div>
                                    <div>Enter ID to update:</div>
                                    <asp:Textbox ID="oldid" runat="server" />
                                </div>

                            </div>

                            <br />
                            <asp:GridView ID="gvTeams" Width="100%" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>
</asp:Content>
