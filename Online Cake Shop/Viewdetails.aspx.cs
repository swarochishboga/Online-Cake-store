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
    public partial class Viewdetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineCakeshopConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Productdetails  where pr_id=" + Request.QueryString["id".ToString()] + "", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Image1.ImageUrl = dr[6].ToString();
                lblDetails.Text = dr[4].ToString();
                lblFoodType.Text = dr[5].ToString();
                lblPrice.Text = dr[3].ToString();
                lblProductName.Text = dr[1].ToString();
                lblType.Text = dr[2].ToString();
            }
            dr.Close();
            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeUser.aspx");
        }
    }
}