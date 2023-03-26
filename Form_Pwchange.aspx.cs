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
    public partial class Form_Pwchange : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
            if (Session["new"] != null)
            {
                try
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter("Select Password,Recovery from [Login] where Username='" + Session["new"].ToString() + "'", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    txtCurrentPass.Text = dt.Rows[0][0].ToString();
                    txtcurrentkey.Text = dt.Rows[0][1].ToString();
                    con.Close();
                    dt.Clear();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
            else
            {
                Response.Redirect("Form_Login.aspx");
            }
            lblMessage.Visible = false;
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string newpass = txtNewPass.Text;
            string confirmpass = txtConfirmPass.Text;
            if (newpass != "" || confirmpass != "")
            {
                if (newpass == confirmpass)
                {
                    try
                    {
                        con.Open();
                        string newpassword = txtConfirmPass.Text;
                        SqlCommand updatepass = new SqlCommand("Update [Login] set Password = '" + newpassword + "' where Username='" + Session["new"].ToString() + "'", con);
                        updatepass.ExecuteNonQuery();
                        con.Close();
                        lblMessage.Visible = true;
                        lblMessage.Text = "Password Successfully Changed!";
                        lblMessage.ForeColor = System.Drawing.Color.White;
                        lblMessage.BackColor = System.Drawing.Color.Green;

                    }
                    catch (Exception ex)
                    {
                        RequiredFieldValidator1.Text = ex.ToString();
                    }

                }
                else
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "Passwords must Match!";
                    lblMessage.ForeColor = System.Drawing.Color.White;
                    lblMessage.BackColor = System.Drawing.Color.Red;
                }

            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Passwords Cannot Be Empty!";
                lblMessage.ForeColor = System.Drawing.Color.White;
                lblMessage.BackColor = System.Drawing.Color.Red;
            }
        }

        protected void btnsave(object sender, EventArgs e)
        {
            string newkey = txtnewkey.Text;
            string confirmkey = txtconfirmkey.Text;
            if (newkey != "" || confirmkey != "")
            {
                if (newkey == confirmkey)
                {
                    try
                    {
                        con.Open();
                        string newrecovery = txtconfirmkey.Text;
                        SqlCommand updatepass = new SqlCommand("Update [Login] set Recovery = '" + newrecovery + "' where Username='" + Session["new"].ToString() + "'", con);
                        updatepass.ExecuteNonQuery();
                        con.Close();
                        lblMessage.Visible = true;
                        lblMessage.Text = "Note: Recovery Key Successfully Changed!";
                        lblMessage.ForeColor = System.Drawing.Color.White;
                        lblMessage.BackColor = System.Drawing.Color.Green;

                    }
                    catch (Exception ex)
                    {
                        RequiredFieldValidator1.Text = ex.ToString();
                    }

                }
                else
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "Keys must Match!";
                    lblMessage.ForeColor = System.Drawing.Color.White;
                    lblMessage.BackColor = System.Drawing.Color.Red;
                }

            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Note: Recovery Key Cannot Be Empty!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.BackColor = System.Drawing.Color.Red;
            }
        }

        
    }
}