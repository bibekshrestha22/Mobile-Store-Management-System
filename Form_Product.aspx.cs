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
    public partial class Form_Product : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {

            }
            else
            {
                Response.Redirect("Form_Login.aspx");
            }
            lblSucces.Visible = false;
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txt_name.Text != "" || txt_quantity.Text != "" || txt_rate.Text != "")
            {
                HttpPostedFile postedfile = Imageupload.PostedFile;
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

                            if (Imageupload.HasFile)
                            {
                                Guid ID = Guid.NewGuid();
                                string str = Imageupload.FileName;
                                Imageupload.PostedFile.SaveAs(Server.MapPath("~/Images/" + str));
                                string Image = "~/Images/" + str.ToString();
                                string name = txt_name.Text;
                                string qty = txt_quantity.Text;
                                string rate = txt_rate.Text;
                                string srate = txt_srate.Text;
                                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
                                SqlCommand cmd = new SqlCommand("INSERT INTO Totalproduct VALUES(@PId,@Name,@Quantity,@Rate,@Sellingrate,@Image);", con);
                                cmd.Parameters.AddWithValue("@PId", ID.ToString());
                                cmd.Parameters.AddWithValue("@Name", name);
                                cmd.Parameters.AddWithValue("@Quantity", qty);
                                cmd.Parameters.AddWithValue("@Rate", rate);
                                cmd.Parameters.AddWithValue("@Sellingrate", srate);
                                cmd.Parameters.AddWithValue("@Image", Image);
                                con.Open();
                                cmd.ExecuteNonQuery();
                                GridView6.DataBind();
                                con.Close();
                                clear();
                                lblSucces.Visible = true;
                                lblSucces.ForeColor = System.Drawing.Color.White;
                                lblSucces.BackColor = System.Drawing.Color.ForestGreen;

                            }

                            else
                            {
                                lblSucces.Text = "Please Upload  Image File";
                                lblSucces.ForeColor = System.Drawing.Color.White;
                                lblSucces.BackColor = System.Drawing.Color.Red;
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
                        lblSucces.Text = "Note: The product is successfully added!";
                        lblSucces.ForeColor = System.Drawing.Color.White;
                        lblSucces.BackColor = System.Drawing.Color.Red;
                        clear();
                        break;
                }
            }
            else
            {
                lblSucces.Visible = true;
                lblSucces.Text = "Note: Products cannot be added with empty fields";
                lblSucces.ForeColor = System.Drawing.Color.White;
                lblSucces.BackColor = System.Drawing.Color.IndianRed;
            }
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }
        private void clear()
        {
            txt_name.Text = "";
            txt_quantity.Text = "";
            txt_rate.Text = "";
            txt_srate.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}
    
    
