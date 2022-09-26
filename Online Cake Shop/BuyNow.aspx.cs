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
    public partial class BuyNow : System.Web.UI.Page
    {
        SqlDataReader dr1;
        SqlCommand cmd, cmd1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                
                dt.Columns.Add("productid");
                dt.Columns.Add("productimage");
                dt.Columns.Add("productname");
                dt.Columns.Add("type");
                dt.Columns.Add("price");
                dt.Columns.Add("quantity");
                dt.Columns.Add("totalprice");
                


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineCakeshopConnectionString"].ConnectionString);
                        String myquery = "select * from Productdetails where pr_id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                       
                        dr["pr_id"] = ds.Tables[0].Rows[0]["pr_id"].ToString();                      
                        dr["pr_Image"] = ds.Tables[0].Rows[0]["pr_Image"].ToString();
                        dr["pr_Name"] = ds.Tables[0].Rows[0]["pr_Name"].ToString();                      
                        dr["pr_Type"] = ds.Tables[0].Rows[0]["pr_Type"].ToString();
                        dr["pr_Price"] = ds.Tables[0].Rows[0]["pr_Price"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["pr_Price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineCakeshopConnection"].ConnectionString);
                        String myquery = "select * from Productdetails where pr_id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                      
                        dr["pr_id"] = ds.Tables[0].Rows[0]["pr_id"].ToString();                     
                        dr["pr_Image"] = ds.Tables[0].Rows[0]["pr_Image"].ToString();
                        dr["pr_Name"] = ds.Tables[0].Rows[0]["pr_Name"].ToString();                       
                        dr["pr_Type"] = ds.Tables[0].Rows[0]["pr_Type"].ToString();
                        dr["pr_Price"] = ds.Tables[0].Rows[0]["pr_Price"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["pr_Price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                    }


                }
                // Label2.Text = GridView1.Rows.Count.ToString();
                MultiView1.ActiveViewIndex = 0;
                lblOrderingDate.Text = DateTime.Now.ToShortDateString();
                lblDeliveryDate.Text = DateTime.Now.AddDays(7).ToShortDateString();

            }

        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }

        protected void btnGoToStep2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            lblPayType.Text = "Cash on Delivery";
        }

        protected void btnBackToStep1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnGoToStep3_Click(object sender, EventArgs e)
        {
            lblorderdate.Text = lblOrderingDate.Text;
            lblcomplitiondate.Text = lblDeliveryDate.Text;
            lblPaymentby.Text = lblPayType.Text;
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable dt;

            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                SqlConnection s = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineCakeshopConnectionString"].ConnectionString);
                s.Open();
                cmd1 = new SqlCommand("select regi_id, regi_Username from tbl_Registration where regi_Username='" + Session["username"] + "'", s);
                dr1 = cmd1.ExecuteReader();
                while (dr1.Read())
                {

                    int cusid = Convert.ToInt32(dr1[0]);
                    cmd = new SqlCommand("insert into orderdetails values('" + lblorderdate.Text + "','" + lblcomplitiondate.Text + "','" + dt.Rows[i]["quantity"] + "','" + dt.Rows[i]["totalprice"] + "','" + lblPaymentby.Text + "'," + dt.Rows[i]["pr_id"] + "," + cusid  + ")", s);
                }
                dr1.Close();
                cmd.ExecuteNonQuery();

                lblStatus.Text = "Sucessfully Ordered";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}