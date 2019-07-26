<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UnitTrust.aspx.cs" Inherits="EADP_Proj.UnitTrust" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form1" runat="server">
            <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Search</h3>
                    </div>
            </div>
            <br />
            <asp:Label ID="lbCustId"  runat="server" Text="Bank:"></asp:Label>

            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>DBS</asp:ListItem>
                <asp:ListItem>OCBC</asp:ListItem>
                <asp:ListItem>UOB</asp:ListItem>
                <asp:ListItem>SC</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Button ID="btnGetCustomer" runat="server" CssClass="btn btn-default" Text="Get" OnClick="btnGetCustomer_Click" />
            <br />
            <br />
            <br />
            <br />
            <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Details</h3>
                    </div>
            </div>
                 <div class="panel-body"> </div>
                        <div class="form-group">
                            <asp:Label ID="PlanName"  runat="server" Text="Selected Plan:"></asp:Label>
                            <asp:TextBox ID="tbPlanName" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                        </div>
             <div class="row"> 
              <label for="Lbl_Principal" class="col-sm-2 col-form-label">Principal:</label>
                    <div class="col-sm-4">
                     <asp:Label ID="Lbl_Principal" runat="server"></asp:Label>  
                      <div>
                        <asp:panel ID="PanelCust" runat="server" Visible="False"> </asp:panel>
                         <div class="row"> 
                          <label for="Lbl_Term" class="col-sm-2 col-form-label">Term (Months):</label>
                           <div class="col-sm-4">
                            <asp:Label ID="Lbl_Term" runat="server"></asp:Label>
                             </div>
                              <label for="Lbl_InterestRate" class="col-sm-2 col-form-label">Interest Rate:</label>
                               <div class="col-sm-4">
                                <asp:Label ID="Lbl_InterestRate" runat="server"></asp:Label>
                               </div>
                             </div>
                          </div>
                       </div>
               </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
              <asp:Label ID="lblErr"  runat="server" Text="" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </form>
</asp:Content>
