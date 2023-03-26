using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Mobile_Store_Management_System_FYP
{
    public partial class Form_PSRecovery : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            lblkhatra.Visible = false;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("Select Recovery from [Login] where Username='" + ddlussername.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            txt_password.Text = dt.Rows[0][0].ToString();
            con.Close();
            dt.Clear();

        }

        protected void Btncheck_Click(object sender, EventArgs e)
        {
            if (txt_recovery.Text == txt_password.Text)
            {
                txt_newpass.Visible = true;
                txt_confirm.Visible = true;
                lblkhatra.Visible = true;
                lblkhatra.Text = "Correct Pin";
                lblkhatra.ForeColor = System.Drawing.Color.White;
                lblkhatra.BackColor = System.Drawing.Color.ForestGreen;
                lblnew.Visible = true;


            }

            else if (txt_recovery.Text != txt_password.Text)
            {
                lblkhatra.Visible = true;
                lblkhatra.Text = "Incorrect Recovery pin";
                lblkhatra.ForeColor = System.Drawing.Color.Red;

            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            String newd = txt_newpass.Text;
            String confirmd = txt_confirm.Text;
            if (newd != "" || confirmd !="")
            {

                string newpass = txt_newpass.Text;

                con.Open();
                SqlCommand updatepass = new SqlCommand("Update [Login] set Password = '" + newpass + "' where Username='" + ddlussername.Text + "'", con);
                updatepass.ExecuteNonQuery();
                con.Close();
                lblkhatra.Visible = true;
                lblkhatra.Text = "Password Updated Changed!";
                lblkhatra.ForeColor = System.Drawing.Color.White;
                lblkhatra.BackColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                lblkhatra.Visible = true;
                lblkhatra.Text = "Please Match the recovery key to proceed";
                lblkhatra.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Form_Login.aspx");
        }
    }
   }
    
