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
    public partial class Form_Repair : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ddlistCName.Text != "" || txt_address.Text != "" || txt_model.Text != "" || txt_imei.Text != "" || txt_description.Text != "" || txt_date.Text != "")
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
                                Guid Id = Guid.NewGuid();
                                string str = FileUpload1.FileName;
                                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Phones/" + str));
                                string Image = "~/Phones/" + str.ToString();
                                string name = DropDownList1.SelectedItem.ToString();
                                string cid = cname.Text;
                                string address = txt_address.Text;
                                string model = txt_model.Text;
                                string imei = txt_imei.Text;
                                string description = txt_description.Text;
                                string date = txt_date.Text;
                                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
                                SqlCommand cmd = new SqlCommand("INSERT INTO Repair VALUES(@Id,@Customername,@CustomerId,@Address,@Phonemodel,@Imei,@Problem,@Date,@Image);", con);
                                cmd.Parameters.AddWithValue("@Id", Id.ToString());
                                cmd.Parameters.AddWithValue("@Customername", name);
                                cmd.Parameters.AddWithValue("@CustomerId", cid);
                                cmd.Parameters.AddWithValue("@Address", address);
                                cmd.Parameters.AddWithValue("@Phonemodel", model);
                                cmd.Parameters.AddWithValue("@Imei", imei);
                                cmd.Parameters.AddWithValue("@Problem", description);
                                cmd.Parameters.AddWithValue("@Date", date);
                                cmd.Parameters.AddWithValue("@Image", Image);
                                con.Open();
                                cmd.ExecuteNonQuery();
                                GridView1.DataBind();
                                con.Close();
                                clear();
                                lblSucces.Visible = true;
                                lblSucces.Text = "Note: The Repair Record is Successfully added!";
                                lblSucces.ForeColor = System.Drawing.Color.White;
                                lblSucces.BackColor = System.Drawing.Color.ForestGreen;

                            }

                            else
                            {
                                lblSucces.Text = "Please Upload  Image File";
                                lblSucces.ForeColor = System.Drawing.Color.Red;
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
                        lblSucces.Text = "Note: Repair Records cannot be Recorded with empty fields!";
                        lblSucces.ForeColor = System.Drawing.Color.White;
                        lblSucces.BackColor = System.Drawing.Color.IndianRed;
                        clear();
                        break;
                }
            }
            else
            {
                lblSucces.Visible = true;
                lblSucces.Text = "Fields Cannot Be Left Empty";
                lblSucces.ForeColor = System.Drawing.Color.White;
                lblSucces.BackColor = System.Drawing.Color.IndianRed;
               
                
            }
        }
        private void clear()
        {
           
            txt_address.Text = "";
            txt_model.Text = "";
            txt_description.Text = "";
            txt_date.Text = "";
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {

            }
            else
            {
                Response.Redirect("Form_Login.aspx");
            }
            Response.Write(Application["count"].ToString());
            lblSucces.Visible = false;
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
    
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string name = DropDownList1.Text.ToString(); ;
            string cidd = DropDownList1.SelectedValue.ToString();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT [Id],[Address] from customers where [Id] ='" + cidd + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            cname.Text = dt.Rows[0][0].ToString();
            txt_address.Text = dt.Rows[0][1].ToString();
           
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string name = DropDownList1.Text.ToString(); ;
            string cidd = DropDownList1.SelectedValue.ToString();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT [Id],[Address] from customers where [Id] ='" + cidd + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            cname.Text = dt.Rows[0][0].ToString();
            txt_address.Text = dt.Rows[0][1].ToString();
        }
    }
}
