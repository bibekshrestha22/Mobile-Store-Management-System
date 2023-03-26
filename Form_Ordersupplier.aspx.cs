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
    public partial class Form_Ordersupplier : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        Guid orderid = Guid.NewGuid();
        protected void Page_Load(object sender, EventArgs e)

        {
            if (Session["new"] != null)
            {

            }
            else
            {
                Response.Redirect("Form_Login.aspx");
            }
            string oid = orderid.ToString();
            txt_oid.Text = oid;
            lblkhatra.Visible = false;
            
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }

        protected void btnnamee(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter("Select Suppliername from [Supplier] where Id='" + ddlsname.SelectedValue + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                lblname.Text = dt.Rows[0][0].ToString();
                con.Close();
                dt.Clear();
            }
            catch (Exception ex)
            {
                lblkhatra.Visible = true;
                //lblkhatra.Text = "Please click the details first";
                lblkhatra.Text = "Inner Exception" + ex.ToString();
                lblkhatra.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnratee(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter("Select Rate from [Totalproduct] where PId='" + ddlpname.SelectedValue + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                txt_rate.Text = dt.Rows[0][0].ToString();
                con.Close();
                dt.Clear();
            }
            catch (Exception ex)
            {
                lblkhatra.Visible = true;
                //lblkhatra.Text = "Please click the details first";
                lblkhatra.Text = "Inner Exception" + ex.ToString();
                lblkhatra.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnAdds(object sender, EventArgs e)
        {
            try
            {


                int oqty = Convert.ToInt32(txt_quantity.Text);
                if
                    (oqty >= 1)
                {

                    try
                    {
                        string oid = lbloid.Text;
                        string date = txt_date.Text;
                        int qty = Convert.ToInt32(txt_quantity.Text);
                        int rate = Convert.ToInt32(txt_rate.Text);
                        int amount = qty * rate;
                        string productname = ddlpname.SelectedItem.ToString();
                        string productid = ddlpname.SelectedValue.ToString();
                        string Supplierid = ddlsname.SelectedValue;
                        try
                        {
                            con.Open();
                            SqlCommand insert = new SqlCommand("Insert into [Ordersupplier] values (@OId,@Date,@PId,@Pname,@Quantity,@Rate,@Amount,@SId)", con);
                            insert.Parameters.AddWithValue("@OId", orderid.ToString());
                            insert.Parameters.AddWithValue("@Date", date);
                            insert.Parameters.AddWithValue("@PId", productid);
                            insert.Parameters.AddWithValue("@Pname", productname);
                            insert.Parameters.AddWithValue("@Quantity", qty);
                            insert.Parameters.AddWithValue("@Rate", rate);
                            insert.Parameters.AddWithValue("@Amount", amount);
                            insert.Parameters.AddWithValue("@SId", Supplierid);
                            insert.ExecuteNonQuery();
                            GridView1.DataBind();
                            con.Close();
                            lblkhatra.Visible = true;
                            lblkhatra.Text = "Order Item Inserted Successfully";
                            lblkhatra.ForeColor = System.Drawing.Color.White;
                            lblkhatra.BackColor = System.Drawing.Color.Green;
                            txt_quantity.Text = "";
                            txt_rate.Text = "";



                        }
                        catch (Exception ex)

                        {
                            lblkhatra.Text = ex.ToString();
                        }
                    }
                    catch (Exception ex)

                    {
                        lblkhatra.Visible = true;
                        lblkhatra.Text = "Note: Empty Order cannot be made.!.";
                        lblkhatra.ForeColor = System.Drawing.Color.White;
                        lblkhatra.BackColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lblkhatra.Visible = true;
                    lblkhatra.Text = "Note: Please Enter valid quantity!";
                    lblkhatra.ForeColor = System.Drawing.Color.White;
                    lblkhatra.BackColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)

            {
                lblkhatra.Visible = true;
                lblkhatra.Text = "Note: Fields cannot be left empty for Orders";
                lblkhatra.ForeColor = System.Drawing.Color.White;
                lblkhatra.BackColor = System.Drawing.Color.Red;
            }
        }

        protected void btnoidd(object sender, EventArgs e)
        {
            lbloid.Text = txt_oid.Text;
            btnoid.Enabled = false;
            //lblGetOrderID.Visible = false;
        }
      
    }
}