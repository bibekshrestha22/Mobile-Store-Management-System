using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Data;

namespace Mobile_Store_Management_System_FYP
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            lblbook.Visible = false;
        }
        protected void btnsearch(object sender, EventArgs e)
        {
            if (txt_search.Text=="")
            {
                lblbook.Visible = true;
                lblbook.Text = "Please Enter Somethig to search";
                lblbook.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                this.BindGrid();
                GridView1.Visible = false;
            }
            
        }
        protected void BindGrid()
        {
            string val = txt_search.Text.Trim();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT [Name],[Quantity],[Sellingrate] FROM [Totalproduct] WHERE Name LIKE '%" + val + "%'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                GridView2.DataSource = dt;
                GridView2.DataBind();
                carousel.Visible = false;
                lblbook.Visible = true;
                lblbook.Text = "Match found";
                lblbook.ForeColor = System.Drawing.Color.LightGreen;
            }
            else
            {
                lblbook.Visible = true;
                lblbook.Text = "Sorry! Search Not Found";
                lblbook.ForeColor = System.Drawing.Color.Red;

            }


        }

        protected void btnpurchasee(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }
    }
 }