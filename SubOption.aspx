<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SubOption.aspx.cs" Inherits="EADP_Proj.SubOption" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div>
    </div>
        <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Welcome To Monthly Subscription Page</h3>
                    </div>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Welcome to Monthly Subscription page!"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="In this page, we have three types of plans for your needs in Investment"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Please choose which type of products you would like to purchase"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Monthly Subscription:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>--Select one--</asp:ListItem>
            <asp:ListItem>Unit Trust</asp:ListItem>
            <asp:ListItem>Bonds</asp:ListItem>
            <asp:ListItem>Fixed Annuities</asp:ListItem>
            <asp:ListItem>Cryptocurrency</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Please choose a plan:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem Value="0">--Select one--</asp:ListItem>
            <asp:ListItem Value="1">Plan A</asp:ListItem>
            <asp:ListItem Value="2">Plan B</asp:ListItem>
            <asp:ListItem Value="3">Plan C</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">What Are The Plans We Have</h3>
                    </div>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Subscription Plan A"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Subscription Plan B"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Subscription Plan C"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="$49.99 For Every 1 Month"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="$39.99 For Every Month"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="$29.99 For Every Month"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *Minimum 1 year*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *Minimum 2 Year*<br />
        <br />
        <br />
        <br />
        <br />
             </div>
</form>
</asp:Content>
