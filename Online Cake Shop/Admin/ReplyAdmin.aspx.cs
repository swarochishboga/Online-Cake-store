using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Cake_Shop.Admin
{
    public partial class ReplyAdminaspx : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineCakeshopConnectionString"].ConnectionString);
        SqlCommand cmd3;
        int orderid;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            string accc = Request.QueryString["id".ToString()];
            SqlCommand cmd1 = new SqlCommand("select * from Orderdetails join  Productdetails on Orderdetails.product_id=Productdetails.pr_id join tbl_Registration on Orderdetails.Cus_id = tbl_Registration.regi_id where Orderdetails.odr_id='" + Request.QueryString["id".ToString()] + "'", con);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                lblOrderid.Text = dr[0].ToString();
                lblComplitionDate.Text = dr[2].ToString();
                lblCusName.Text = dr[16].ToString();
                lblClothName.Text = dr[9].ToString();
                orderid = Convert.ToInt32(dr[0]);
            }
            dr.Close();
            con.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select Id  from Admin where UserName='" + Session["username"] + "'", con);
            SqlDataReader dr = cmd2.ExecuteReader();
            while (dr.Read())
            {
                cmd3 = new SqlCommand("insert into Adminreply values('" + ddStatus.Text + "','" + txtReply.Text + "'," + orderid + ")", con);
            }
            dr.Close();
            cmd3.ExecuteNonQuery();
            con.Close();
            lblStatus.Text = "You have Sucessfully Replyed";
            txtReply.Text = "";
        }
    }
}