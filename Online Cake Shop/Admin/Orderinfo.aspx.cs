using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Cake_Shop.Admin
{
    public partial class Orderinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Reply")
            {
                Response.Redirect("ReplyAdmin.aspx?id=" + e.CommandArgument.ToString());
            }

        }
    }
 }