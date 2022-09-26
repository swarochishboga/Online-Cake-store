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
    public partial class Homesignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["OnlineCakeshopConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                {
                    SqlCommand cmd = new SqlCommand("Insert into tbl_Registration values('" + txtboxFullName.Text + "','" + txtboxUsername.Text + "','" + txtboxemail.Text + "','" + txtboxPassword.Text + "','"  + DropDownListGender.Text + "','" + txtboxDOB.Text + "','" + TxtCon.Text + "','" + txtboxAdderss.Text + "')" ,con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblstatus.Text = "Registration succesful";
                    txtboxAdderss.Text = "";
                    txtboxConfirmPassword.Text = "";
                    txtboxDOB.Text = "";
                    txtboxemail.Text = "";
                    txtboxFullName.Text = "";
                    txtboxPassword.Text = "";
                    txtboxUsername.Text = "";
                    TxtCon.Text = "";

                }
            }
   
        }    
    }
}