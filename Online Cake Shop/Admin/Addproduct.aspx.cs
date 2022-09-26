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
    public partial class Addproduct : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["OnlineCakeshopConnectionString"].ConnectionString;
        string b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                FileUploadImage.SaveAs(Request.PhysicalApplicationPath + "Product Image/" + FileUploadImage.FileName.ToString());
                b = "Product Image/" + FileUploadImage.FileName.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "Insert into Productdetails values ('" + txtboxName.Text + "','" + DropDownType.Text + "','" + txtboxPrice.Text + "','" + txtboxDescription.Text + "','" + DropDownListFoodType.Text + "','" + b.ToString() + "')";
                cmd.ExecuteNonQuery();
                lblStatus.Text = "Product Sucessfully Added";
                lblStatus.ForeColor = System.Drawing.Color.Green;
                txtboxDescription.Text = "";
                txtboxName.Text = "";
                txtboxPrice.Text = "";

             }
        }
    }
}