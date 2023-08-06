<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Player_reg.aspx.cs" Inherits="Team_Players_App.Player_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Player Registration</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                            <div class="row">

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="First Name" runat="server" />
                                        <asp:TextBox Required="true" ID="FirstName" runat="server" Enabled="true" CssClass="form-control input-group-sm" placeholder="First Name" />
                                        <span asp-validation-for="First Name" class="text-danger"></span>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Last Name" runat="server" />
                                        <asp:TextBox Required="true" ID="LastName" runat="server" Enabled="true" CssClass="form-control input-group-sm" placeholder="Last Name" />
                                        <span asp-validation-for="Last Name"  class="text-danger"></span>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Age" runat="server" />
                                        <asp:TextBox Required="true" ID="Age" runat="server" Enabled="true" TextMode="Number" CssClass="form-control input-group-sm" placeholder="Age"  />
                                        <span asp-validation-for="Age" class="text-danger"></span>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="ID Number" runat="server" />
                                        <asp:TextBox Required="true" ID="ID" runat="server" Enabled="true" CssClass="form-control input-group-sm" placeholder="ID Number" />
                                        <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="ID" ID="IDValidator" ValidationExpression="^[\s\S]{13,13}$" runat="server" ErrorMessage="ID must be 13 numbers" BackColor="Red" ToolTip="ID must be 13 numbers">ID must be 13 numbers</asp:RegularExpressionValidator>
                                        <%--<span asp-validation-for="ID Number" class="text-danger"></span>--%>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Address" runat="server" />
                                        <asp:TextBox Required="true" ID="Address" runat="server" Enabled="true" CssClass="form-control input-group-sm" placeholder="Address" />
                                        <span asp-validation-for="Address" class="text-danger"></span>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label Text="Team Selection" runat="server" />
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=TINUS\SQLEXPRESS;Initial Catalog=TeamPlayers;Integrated Security=True" OnSelecting="SqlDataSource1_Selecting" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name] FROM [Teams]"></asp:SqlDataSource>
                                            <asp:DropDownList Required="true" ID="TeamSelection" runat="server"  CssClass="form-control input-group-sm" DataSourceID="SqlDataSource1" DataTextField="Name"></asp:DropDownList>
                                            <span asp-validation-for="Team Selection" class="text-danger"></span>
                                        </div>
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
                                    <div> Enter PlayerID to update or delete:</div>
                                    <asp:TextBox ID="oldid" runat="server" />
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
