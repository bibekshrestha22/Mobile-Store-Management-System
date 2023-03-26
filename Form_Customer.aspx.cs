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
using System.Text.RegularExpressions;

namespace Mobile_Store_Management_System_FYP
{
    public partial class Form_Customer : System.Web.UI.Page
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

            if (txtSearch.Text == "")
            {
                GridView1.Visible = true;
                GridView2.Visible = true;

            }
            lblSucces.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label12.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;

        }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int balancee = Convert.ToInt32(txt_balance.Text);
                if (balancee >= 0)
                {

                    if (txt_name.Text != "" || txt_age.Text != "" || txt_contact.Text != "" || txt_address.Text != "" || txt_balance.Text != "")
                    {

                        HttpPostedFile postedfile = FileUpload1.PostedFile;
                        string filename = Path.GetFileName(postedfile.FileName);
                        string fileextension = Path.GetExtension(filename);
                        switch (fileextension.ToLower())
                        {
                            //only allows upload of images
                            case ".jpg":
                            case ".jpeg":
                            case ".bmp":
                            case ".png":
                                try
                                {

                                    if (FileUpload1.HasFile)
                                    {
                                        Guid id = Guid.NewGuid();
                                        string str = FileUpload1.FileName;
                                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/" + str));
                                        string Name = txt_name.Text;
                                        string age = txt_age.Text;
                                        string contact = txt_contact.Text;
                                        string address = txt_address.Text;
                                        string email = txt_email.Text;
                                        string balance = txt_balance.Text;
                                        string Image = "~/Images/" + str.ToString();
                                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
                                        SqlCommand cmd = new SqlCommand("INSERT INTO customers VALUES(@Id,@Name,@Age,@Contact,@Address,@Email,@Balance,@Image);", con);
                                        cmd.Parameters.AddWithValue("@Id", id.ToString());
                                        cmd.Parameters.AddWithValue("@Name", Name);
                                        cmd.Parameters.AddWithValue("@Age", age);
                                        cmd.Parameters.AddWithValue("@Contact", contact);
                                        cmd.Parameters.AddWithValue("@Address", address);
                                        cmd.Parameters.AddWithValue("@Email", email);
                                        cmd.Parameters.AddWithValue("@Balance", balance);
                                        cmd.Parameters.AddWithValue("@Image", Image);
                                        con.Open();
                                        cmd.ExecuteNonQuery();
                                        GridView1.DataBind();
                                        con.Close();
                                        clear();
                                        lblSucces.Visible = true;
                                        lblSucces.Text = "Note! The customer is registered successfully!";
                                        lblSucces.ForeColor = System.Drawing.Color.White;
                                        lblSucces.ForeColor = System.Drawing.Color.ForestGreen;

                                    }

                                    else
                                    {
                                        lblSucces.Text = "Please Upload  Image File";
                                        lblSucces.ForeColor = System.Drawing.Color.Red;
                                        lblSucces.BackColor = System.Drawing.Color.White;
                                    }
                                }
                                catch (Exception ex)
                                {
                                    lblSucces.Visible = true;
                                    lblSucces.Text = ex.ToString();
                                }
                                break;
                            default:
                                lblSucces.Visible = true;
                                Label10.Visible = true;
                                Label11.Visible = true;
                                Label12.Visible = true;
                                Label13.Visible = true;
                                Label14.Visible = true;
                                Label15.Visible = true;
                                lblSucces.Text = "Please Choose Image File (.jpg, .bmp, .jpeg, .png) & Fill all the required Fields";
                                lblSucces.ForeColor = System.Drawing.Color.White;
                                lblSucces.BackColor = System.Drawing.Color.IndianRed;
                                clear();
                                break;
                        }
                    }
                    else
                    {
                        lblSucces.Visible = true;
                        lblSucces.Text = "Note: Fields Cannot Be Left Empty";
                        lblSucces.ForeColor = System.Drawing.Color.White;
                        lblSucces.BackColor = System.Drawing.Color.Red;
                    }
                }
                else
                {

                    lblSucces.Visible = true;
                    lblSucces.Text = "Note: Please enter a valid balance";
                    lblSucces.ForeColor = System.Drawing.Color.White;
                    lblSucces.BackColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblSucces.Visible = true;
                lblSucces.Text = "Note:: Fields Cannot Be Left Empty";
                lblSucces.ForeColor = System.Drawing.Color.White;
                lblSucces.BackColor = System.Drawing.Color.Red;
               
                Label10.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;
                Label13.Visible = true;
                Label14.Visible = true;
                Label15.Visible = true; ;
            }

            
        }
        private void clear()
        {
          
            txt_name.Text = "";
            txt_age.Text = "";
            txt_contact.Text = "";
            txt_email.Text = "";
            
            txt_address.Text = "";
        }

        protected void btnSelectCategory_Click(object sender, EventArgs e)
        {
            this.BindGrid();
            GridView1.Visible = false;
            
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[0].Text = Regex.Replace(e.Row.Cells[0].Text, txtSearch.Text.Trim(), delegate (Match match)
                {
                    return string.Format("<span style = 'background-color:#61bde6'>{0}</span>", match.Value);
                }, RegexOptions.IgnoreCase);
            }
        }
        protected void BindGrid()
        {
            string val = txtSearch.Text.Trim();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT [Id],[Name],[Age],[Contact],[Email],[Address] /*,[Image]*/ FROM [customers] WHERE Name LIKE '%" + val + "%'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            
            if (dt.Rows.Count > 0)
            {
                GridView2.DataSource = dt;
                GridView2.DataBind();
                lblbook.Visible = true;
                lblbook.Text = "Match found!";
                lblbook.ForeColor = System.Drawing.Color.White;
                lblbook.BackColor = System.Drawing.Color.Green;
            }
            else
            {
                lblbook.Visible = true;
                lblbook.Text = "Sorry! Search Not Found";
                lblbook.ForeColor = System.Drawing.Color.White;
                lblbook.BackColor = System.Drawing.Color.Red;


            }


        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            this.BindGrid();

        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }

        protected void btnrefresh_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form_Customer.aspx");
        }
    }
}