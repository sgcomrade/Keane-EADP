using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADP_Proj
{
    public partial class SubOption : System.Web.UI.Page
    {
        public object Respond { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubPlanC.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubPlanB.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubPlanA.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue == "1")
            {
                Response.Redirect("");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}