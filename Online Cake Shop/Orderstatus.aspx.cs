using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Cake_Shop
{
    public partial class Orderstatus : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["OnlineCakeshopConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataTable DT = new DataTable();
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlDataAdapter da = new SqlDataAdapter("select * from Adminreply join Orderdetails on Adminreply.Order_id=Orderdetails.odr_id join Productdetails on Orderdetails.product_id = Productdetails.pr_id join tbl_Registration on Orderdetails.Cus_id = tbl_Registration.regi_id where regi_Username='" + Session["Username"] + "' order by Reply_id desc", con);
                    da.Fill(DT);
                    if (DT.Rows.Count > 0)
                    {
                        GridView1.DataSource = DT;
                        GridView1.DataBind();
                    }

                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
    
