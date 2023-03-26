using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace Mobile_Store_Management_System_FYP
{
    public partial class Form_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblwarning.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreConnectionString"].ConnectionString);
                con.Open();
                string checkuser = "Select Count(*) from Login where Username = '" + txtUname.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, con);
                int val = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                con.Close();
                if (txtPass.Text == "" || txtUname.Text == "")
                {
                    lblwarning.Visible = true;
                    rq.Visible = true;
                    rq1.Visible = true;
                    lblwarning.ForeColor = System.Drawing.Color.Red;
                    rq.ForeColor = System.Drawing.Color.Red;
                    rq1.ForeColor = System.Drawing.Color.Red;
                    lblwarning.Text = "These Fields are Reqiuired";
                }
                else if (val == 1)
                {
                    con.Open();
                    string checkpass = "select Password from Login where Username = '" + txtUname.Text + "'";
                    SqlCommand comd = new SqlCommand(checkpass, con);
                    string pass = comd.ExecuteScalar().ToString().Replace(" ", "");
                    con.Close();
                    if (pass == txtPass.Text)
                    {
                        Session["new"] = txtUname.Text;
                        Response.Write("Password is correct");
                        Response.Redirect("Homepage.aspx");
                    }

                    else
                    {
                        lblwarning.Visible = true;
                        lblwarning.Text = "Password is incorrect";
                    }
                }
                else
                {

                    lblwarning.Visible = true;
                    lblwarning.Text = "User doesnot exist, Please register the new user";

                }
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form_Order.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }
    }
}