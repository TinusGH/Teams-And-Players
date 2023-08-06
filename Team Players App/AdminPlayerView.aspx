<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPlayerView.aspx.cs" Inherits="Team_Players_App.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Player Viewer:</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                            <div class="row">

                                <div class="row">
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label Text="Team Selection" runat="server" />
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=TINUS\SQLEXPRESS;Initial Catalog=TeamPlayers;Integrated Security=True" OnSelecting="SqlDataSource1_Selecting" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name] FROM [Teams]"></asp:SqlDataSource>
                                            <asp:DropDownList ID="TeamSelection" runat="server"  CssClass="form-control input-group-sm" DataSourceID="SqlDataSource1" DataTextField="Name"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1" style="padding-top: 10px">
                                        <div class="form-group">
                                            <asp:Button Text="Submit" ID="btnsubmit" OnClick="btnsubmit_Click" CssClass="btn btn-primary" Width="150px" runat="server" />
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <br />
                            <asp:GridView ID="gv" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
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
