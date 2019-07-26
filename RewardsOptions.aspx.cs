using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADP_Proj
{
    public partial class RewardsOptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RewardsInvite.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RewardsRedeem.aspx");
        }
    }
}