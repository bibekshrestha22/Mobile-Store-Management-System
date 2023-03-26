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
    public partial class Form_Supplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {

            }
            else
            {
                Response.Redirect("Form_Login.aspx");
            }
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            lblWarning.Visible = false;
            
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int balancee = Convert.ToInt32(txt_balance.Text);
                if (balancee >= 0)

                {


                    if (txt_name.Text == "" || txt_address.Text == "" || txt_contact.Text == "" || txt_balance.Text == "")
                    {
                        lblWarning.Visible = true;
                        lblWarning.Text = "Note: Required Fields Cannot be Left Empty";
                        lblWarning.ForeColor = System.Drawing.Color.White;
                        lblWarning.BackColor = System.Drawing.Color.Red;
                        Label6.Visible = true;
                        Label7.Visible = true;
                        Label8.Visible = true;
                        Label9.Visible = true;
                    }
                    else
                    {
                        try
                        {

                            con.Open();
                            Guid Id = Guid.NewGuid();
                            string insertsupp =
                                "INSERT into [Supplier] (Id,Suppliername,Address,Contact,Email,Balance) values (@Id,@Suppliername,@Address,@Contact,@Email,@Balance)";
                            SqlCommand cmd = new SqlCommand(insertsupp, con);
                            cmd.Parameters.AddWithValue("@Id", Id.ToString());
                            cmd.Parameters.AddWithValue("@Suppliername", txt_name.Text);
                            cmd.Parameters.AddWithValue("@Address", txt_address.Text);
                            cmd.Parameters.AddWithValue("@Contact", txt_contact.Text);
                            cmd.Parameters.AddWithValue("@Email", txt_email.Text);
                            cmd.Parameters.AddWithValue("@Balance", txt_balance.Text);
                            cmd.ExecuteNonQuery();
                            lblWarning.Visible = true;
                            lblWarning.Text = "Note: The Supplier has been registered successfully";
                            lblWarning.ForeColor = System.Drawing.Color.White;
                            lblWarning.BackColor = System.Drawing.Color.Green;
                            txt_name.Text = "";
                            txt_address.Text = "";
                            txt_contact.Text = "";
                            txt_email.Text = "";
                            txt_balance.Text = "";
                            GridView1.DataBind();
                            con.Close();
                        }
                        catch (Exception ex)
                        {
                            lblWarning.Visible = true;
                            lblWarning.Text = ex.ToString();
                        }

                    }
                }
                else
                {
                    lblWarning.Visible = true;
                    lblWarning.Text = "Please enter a valid balance";
                    lblWarning.ForeColor = System.Drawing.Color.White;
                    lblWarning.BackColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblWarning.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                lblWarning.Text = "Note: These Fields are Required!";
                lblWarning.ForeColor = System.Drawing.Color.White;
                lblWarning.BackColor = System.Drawing.Color.Red;
            }
        }
    }
}
  