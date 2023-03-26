using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Mobile_Store_Management_System_FYP
{
    public partial class Form_Receipt : System.Web.UI.Page
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
            lblkhatra.Visible = false;
        }

   

        protected void btninfo(object sender, EventArgs e)
        {
            string customerid = ddlcustomer.SelectedValue;
            lblcid.Text = customerid;
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("Select [Balance] FROM [customers] where [Id] = '" + customerid + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                lblpb.Text = dt.Rows[0][0].ToString();
                dt.Clear();
            }
            catch (Exception ex)
            {
                lblkhatra.Text = ex.ToString();
            }
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }

        protected void btnreceivve(object sender, EventArgs e)
        {
            try
            {

                Guid rid = Guid.NewGuid();
                string customerid = lblcid.Text;
                string date = txt_date.Text;
                int received = Convert.ToInt32(txt_receive.Text.ToString());
                int receivedd = Convert.ToInt32(txt_receive.Text.ToString());
                if (receivedd <= 0)
                {
                    lblkhatra.Visible = true;
                    lblkhatra.Text = "Please enter a valid amount to be paid!";
                    lblkhatra.ForeColor = System.Drawing.Color.White;
                    lblkhatra.BackColor = System.Drawing.Color.Red;
                }
                else
                {

                    try
                    {
                        con.Open();
                        SqlDataAdapter da = new SqlDataAdapter("Select [Balance] from [customers] where [Id]='" + customerid.ToString() + "'", con);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        int prev = Convert.ToInt32(dt.Rows[0][0].ToString());
                        con.Close();
                        dt.Clear();
                        if (txt_receive.Text != "")
                        {
                            if (received > prev)
                            {
                                lblkhatra.Visible = true;
                                lblkhatra.Text = "Received amount shouldnot be greater than actual amount to be received";
                                lblkhatra.ForeColor = System.Drawing.Color.White;
                                lblkhatra.BackColor = System.Drawing.Color.Red;
                            }
                            else
                            {
                                string receiptid = rid.ToString();
                                int newamount = prev - received;
                                try
                                {
                                    con.Open();
                                    SqlCommand updatecommand = new SqlCommand("Update [customers] set [Balance] =@NewBal where [Id] =@Id", con);
                                    updatecommand.Parameters.AddWithValue("@NewBal", newamount.ToString());
                                    updatecommand.Parameters.AddWithValue("@Id", customerid);
                                    updatecommand.ExecuteNonQuery();
                                    SqlCommand insertintoreceipt = new SqlCommand("Insert into [Receipt] values (@RId,@CId,@Date,@Amount)", con);
                                    insertintoreceipt.Parameters.AddWithValue("@RId", receiptid);
                                    insertintoreceipt.Parameters.AddWithValue("@CId", customerid);
                                    insertintoreceipt.Parameters.AddWithValue("@Date", date);
                                    insertintoreceipt.Parameters.AddWithValue("@Amount", received);
                                    insertintoreceipt.ExecuteNonQuery();
                                    GridView1.DataBind();
                                    con.Close();
                                    lblkhatra.Visible = true;
                                    lblkhatra.Text = "Payment Received Successfully";
                                    lblkhatra.ForeColor = System.Drawing.Color.White;
                                    lblkhatra.BackColor = System.Drawing.Color.Green;
                                    txt_receive.Text = string.Empty;
                                }
                                catch (Exception ex)
                                {
                                    lblkhatra.Visible = true;
                                    lblkhatra.Text = ex.ToString();
                                    lblkhatra.ForeColor = System.Drawing.Color.Red;
                                }

                            }

                        }
                        else
                        {

                            lblkhatra.Visible = true;
                            lblkhatra.Text = "Amount cannot be empty for receipt";
                            lblkhatra.ForeColor = System.Drawing.Color.White;
                            lblkhatra.BackColor = System.Drawing.Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                lblkhatra.Visible = true;
                lblkhatra.Text = "Note: Receiving process cant be completed with Missing Fields";
                lblkhatra.ForeColor = System.Drawing.Color.White;
                lblkhatra.BackColor = System.Drawing.Color.Red;
            }

        }
       

    }
}
    
