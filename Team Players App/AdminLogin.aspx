<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Team_Players_App.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Admin Login Page</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                            <div class="row">

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Username:" runat="server" />
                                        <asp:TextBox ID="Username" runat="server" Enabled="true" CssClass="form-control input-group-sm" placeholder="First Name" />
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Password:" runat="server" />
                                        <asp:TextBox ID="Password" runat="server" Enabled="true" CssClass="form-control input-group-sm" placeholder="Last Name" />
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1" style="padding-top: 10px">
                                        <div class="form-group">
                                            <asp:Button Text="Submit" ID="btnsubmit" OnClick="btnsubmit_Click" CssClass="btn btn-primary" Width="150px" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <asp:Label Text="" ForeColor="Black" ID="lblmessage" runat="server" />

                            </div>
                        </div>

                    </section>
                </div>
            </div>
        </section>
    </section>


</asp:Content>
