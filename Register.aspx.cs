using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace Mobile_Store_Management_System_FYP
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        Guid Id = Guid.NewGuid();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {
                
            }
            else
            {
                Response.Redirect("Form_Login.aspx");
            }
                labelwarning.Visible = false;
        }

        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }


        protected void btn_register_Click(object sender, EventArgs e)
        {
            if (txt_fname.Text == "" || txt_lname.Text == "" || txt_email.Text == "" || txt_phone.Text == "" || txt_username.Text == "" || ddlist.Text == "" || txt_password.Text =="" || txt_recovery.Text=="")
            {
                labelwarning.Visible = true;
                labelwarning.ForeColor = System.Drawing.Color.White;
                labelwarning.BackColor = System.Drawing.Color.Red;
                labelwarning.Text = "Note: All the fields are Mandatory";

            }
            else
            {
                try
                {

                    con.Open();

                    string insertuser =
                        "INSERT into [Login] (Id,Username,Password,Firstname,Lastname,Email,Phone,userlevel,Recovery) values (@Id,@Username,@Password,@Firstname,@Lastname,@Email,@Phone,@userlevel,@Recovery)";
                    SqlCommand cmd = new SqlCommand(insertuser, con);
                    cmd.Parameters.AddWithValue("@Id", Id.ToString());
                    cmd.Parameters.AddWithValue("@Username", txt_username.Text);
                    cmd.Parameters.AddWithValue("@Password", txt_password.Text);
                    cmd.Parameters.AddWithValue("@Firstname", txt_fname.Text);
                    cmd.Parameters.AddWithValue("@Lastname", txt_lname.Text);
                    cmd.Parameters.AddWithValue("@Email", txt_email.Text);
                    cmd.Parameters.AddWithValue("@Phone", txt_phone.Text);
                    cmd.Parameters.AddWithValue("@userlevel", ddlist.Text);
                    cmd.Parameters.AddWithValue("@Recovery", txt_recovery.Text);
                    cmd.ExecuteNonQuery();
                    labelwarning.Visible = true;
                    labelwarning.Text = "The User has been registered successfully";
                    labelwarning.ForeColor = System.Drawing.Color.White;
                    labelwarning.BackColor = System.Drawing.Color.Green;

                    txt_username.Text = "";
                    txt_password.Text = "";
                    txt_fname.Text = "";
                    txt_lname.Text = "";
                    txt_email.Text = "";
                    txt_phone.Text = "";
                    ddlist.Text = "";
                    GridView1.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                {
                    labelwarning.Visible = true;
                    labelwarning.Text = ex.ToString();
                }
            }

        }
       
    }
}