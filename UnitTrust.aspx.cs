using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADP_Proj
{
    public partial class UnitTrust : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
//            lbCustId.Text = Session[""].ToString();
            lbCustId.Text = "Bank";
        }

        //protected void btnGetCustomer_Click(object sender, EventArgs e)
        //{
        protected void btnGetCustomer_Click(object sender, EventArgs e)
        {
            Bank cusObj = new Bank();
            BankDAO cusDao = new BankDAO();

            cusObj = cusDao.getRecordByName(lbCustId.Text);
            if (cusObj == null)
            {
                lblErr.Text = "Sorry, the record is not found!";
                //PanelErrorResult.Visible = true;
                //PanelCust.Visible = false;
                Lbl_Principal.Text = String.Empty;
                Lbl_Term.Text = String.Empty;
                Lbl_InterestRate.Text = String.Empty;
            }
            else
            {
                //PanelErrorResult.Visible = false;
                PanelCust.Visible = true;
                Lbl_Principal.Text = cusObj.Principal;
                Lbl_Term.Text = cusObj.Term;
                Lbl_InterestRate.Text = cusObj.InterestRate;
                lblErr.Text = String.Empty;
               // HyplinkAdd.Visible = true;
                Session["SScustId"] = lbCustId.Text;
                Session["SSPrincipal"] = cusObj.Principal;
                Session["SSTerm"] = cusObj.Term;
                Session["SSInterestRate"] = cusObj.InterestRate;
                //  Call timeDeposit to get all TD for the customer 
                //timeDepositDAO tdDAO = new timeDepositDAO();
                //List<timeDeposit> tdList = new List<timeDeposit>();
                //tdList = tdDAO.getTDbyCustomerId(tbCustId.Text);
                //GridView_TD.DataSource = tdList;
                //GridView_TD.DataBind();

            }
        }

        //protected void GridView_TD_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    GridViewRow row = GridView_TD.SelectedRow;

        //    // In this grid, the first cell (index 0) contains
        //    // the TD Account.
        //    Session["SSTDAcNo"] = row.Cells[1].Text;
        //    Response.Redirect("TermDepositUpdate.aspx");
        //}
    }
    }//}