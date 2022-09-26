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
    public partial class Addtocartaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                
                dt.Columns.Add("pr_id");
                dt.Columns.Add("pr_Image");
                dt.Columns.Add("pr_Name");
                dt.Columns.Add("pr_Type");
                dt.Columns.Add("pr_Price");
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
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["pr_Price"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataSourceID = null;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        //GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

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
                        dr["pr_Name"] = ds.Tables[0].Rows[0]["pr_Name"].ToString();
                        dr["pr_Image"] = ds.Tables[0].Rows[0]["pr_Image"].ToString();
                        
                        dr["pr_Type"] = ds.Tables[0].Rows[0]["pr_Type"].ToString();
                        dr["pr_Price"] = ds.Tables[0].Rows[0]["pr_Price"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["pr_Price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataSourceID = null;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataSourceID = null;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[4].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();

                    }


                }

                lblcart.Text = GridView1.Rows.Count.ToString();

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



        
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                    break;

                }
            }

            //for (int i = 1; i <= dt.Rows.Count; i++)
            //{
            //    dt.Rows[i - 1]["sno"] = i;
            //    dt.AcceptChanges();
            //}

            Session["buyitems"] = dt;
            Response.Redirect("AddToCart.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (lblcart.Text == "0" || Session["buyitems"] == null)
            {
                Label3.Text = "please select particular product";
            }
            else
            {
                Response.Redirect("BuyNow.aspx");
            }

        }

    }
}