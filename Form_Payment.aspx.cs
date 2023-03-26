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
    public partial class Form_Payment : System.Web.UI.Page
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
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }

        protected void btninfo(object sender, EventArgs e)
        {
            string supplierid = ddlsupplier.SelectedValue;
            string date = txt_date.Text;
            lblsid.Text = supplierid;
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("Select [Balance] FROM [Supplier] where [Id] = '" + supplierid + "'", con);
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

        protected void btnreceivve(object sender, EventArgs e)
        {
            try
            {

                Guid pid = Guid.NewGuid();

                string supplierid = lblsid.Text;
                int received = Convert.ToInt32(txt_receive.Text.ToString());
                int receivedd = Convert.ToInt32(txt_receive.Text.ToString());

                if (receivedd <= 0)
                {
                    lblkhatra.Visible = true;
                    lblkhatra.Text = "Please enter a valid amount to be paid!";
                    lblkhatra.ForeColor = System.Drawing.Color.White;
                    lblkhatra.ForeColor = System.Drawing.Color.Red;

                }
                else
                {
                    try
                    {

                        con.Open();
                        SqlDataAdapter da = new SqlDataAdapter("Select [Balance] from [Supplier] where [Id]='" + supplierid.ToString() + "'", con);
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

                                lblkhatra.ForeColor = System.Drawing.Color.Red;
                            }

                            else
                            {
                                string receiptid = pid.ToString();
                                string date = txt_date.Text;
                                int newamount = prev - received;

                                try
                                {
                                    con.Open();
                                    SqlCommand updatecommand = new SqlCommand("Update [Supplier] set [Balance] =@NewBal where [Id] =@Id", con);
                                    updatecommand.Parameters.AddWithValue("@NewBal", newamount.ToString());
                                    updatecommand.Parameters.AddWithValue("@Id", supplierid);
                                    updatecommand.ExecuteNonQuery();
                                    SqlCommand insertintoreceipt = new SqlCommand("Insert into [Payment] values (@PId,@SId,@Date,@Amount)", con);
                                    insertintoreceipt.Parameters.AddWithValue("@PId", receiptid);
                                    insertintoreceipt.Parameters.AddWithValue("@SId", supplierid);
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
                            lblkhatra.Text = "Please enter the amount";
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
                lblkhatra.Text = "Note: Payment cant be done with Missing Fields";
                lblkhatra.ForeColor = System.Drawing.Color.White;
                lblkhatra.BackColor = System.Drawing.Color.Red;
            }
        }

        
    
    }
}