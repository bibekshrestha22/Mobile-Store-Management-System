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
    public partial class Form_Salesreturn : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        Guid sretrunsid = Guid.NewGuid();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {

            }
            else
            {
                Response.Redirect("Form_Login.aspx");
            }
            string srid = sretrunsid.ToString();
            lblkhatra.Visible = false;
            txt_srid.Text = srid;
            lblkhatra.Visible = false;
        }

        protected void btninfo(object sender, EventArgs e)
        {
            string salesid = ddlsalesid.SelectedValue;


            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("Select [Item],[Sellingquantity],[Purchaserate],[CId] FROM [Sales] where [Id] = '" + salesid + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                lblitem.Text = dt.Rows[0][0].ToString();
                lblquantity.Text = dt.Rows[0][1].ToString();
                lblrate.Text = dt.Rows[0][2].ToString();
                lblcname.Text = dt.Rows[0][3].ToString();
                dt.Clear();
                con.Close();

            }
            catch (Exception ex)
            {
                lblkhatra.Text = ex.ToString();
            }
        }

        protected void btnbalance(object sender, EventArgs e)
        {
            string item = lblitem.Text;
            String cid = lblcname.Text;
            
            try
            {
                con.Open();
                SqlDataAdapter dad = new SqlDataAdapter("Select [Quantity] FROM [Totalproduct] where [Name] = '" + item + "'", con);
                DataTable doo = new DataTable();
                dad.Fill(doo);
                con.Close();
                lbltquantity.Text = doo.Rows[0][0].ToString();
                doo.Clear();

                con.Open();
                SqlDataAdapter dadd = new SqlDataAdapter("Select [Balance] FROM [customers] where [Id] = '" + cid + "'", con);
                DataTable dod = new DataTable();
                dadd.Fill(dod);
                con.Close();
                lblbalance.Text = dod.Rows[0][0].ToString();
                dod.Clear();
            }
            catch (Exception ex)
            {
                lblkhatra.Visible = true;
                lblkhatra.Text = "Please click the details first Or The user has been deleted!";
                //lblkhatra.Text = "Inner Exception" + ex.ToString();
                btnsid.Enabled = true;
                lblkhatra.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnsidd(object sender, EventArgs e)
        {
            lblsrid.Text = txt_srid.Text;
            //btnpridd.Enabled = false;
            txt_srid.Visible = false;
            btnsid.Enabled = false;
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }

        protected void btndone(object sender, EventArgs e)
        {
            try
            {


                int rsqty = Convert.ToInt32(txt_quantity.Text);
                if (rsqty >= 1)
                {


                    try
                    {

                        string srid = lblsrid.Text;
                        string date = txt_date.Text;
                        string cid = lblcname.Text;
                        string item = lblitem.Text;
                        int returnqty = Convert.ToInt32(txt_quantity.Text);
                        int rate = Convert.ToInt32(lblrate.Text);
                        int amount = returnqty * rate;
                        int balance = Convert.ToInt32(lblbalance.Text);
                        int remainingbalance = balance - amount;
                        int pquantity = Convert.ToInt32(lblquantity.Text);
                        int totalqty = Convert.ToInt32(lbltquantity.Text);




                        try
                        {
                            if (totalqty < returnqty)
                            {
                                lblkhatra.Text = "Insufficient Number of Item in the stock";
                                lblkhatra.Visible = true;
                                lblkhatra.ForeColor = System.Drawing.Color.White;
                                lblkhatra.BackColor = System.Drawing.Color.Red;
                            }
                            else if (returnqty <= Convert.ToInt32(lblquantity.Text))

                            {


                                con.Open();

                                int newstock = totalqty - returnqty;
                                SqlCommand updatecommand = new SqlCommand("Update [Totalproduct] set Quantity =@NEWSTOCK WHERE Name =@PID", con);
                                updatecommand.Parameters.AddWithValue("@NEWSTOCK", newstock.ToString());
                                updatecommand.Parameters.AddWithValue("@PID", item);
                                updatecommand.ExecuteNonQuery();
                                con.Close();
                                con.Open();
                                SqlCommand updatecommandd = new SqlCommand("Update [customers] set Balance =@NEWBALANCE WHERE Id =@CId", con);
                                updatecommandd.Parameters.AddWithValue("@NEWBALANCE", remainingbalance.ToString());
                                updatecommandd.Parameters.AddWithValue("@CId", cid);
                                updatecommandd.ExecuteNonQuery();
                                con.Close();
                                try
                                {
                                    con.Open();
                                    SqlCommand insertcommand = new SqlCommand("Insert Into [Salesreturns] values (@SRId,@Date,@PId,@Pname,@Quantity,@Rate,@CId,@Amount) ", con);
                                    insertcommand.Parameters.AddWithValue("@SRId", srid);
                                    insertcommand.Parameters.AddWithValue("@Date", date);
                                    insertcommand.Parameters.AddWithValue("@PId", ddlsalesid.SelectedValue);
                                    insertcommand.Parameters.AddWithValue("@Pname", item);
                                    insertcommand.Parameters.AddWithValue("@Quantity", txt_quantity.Text);
                                    insertcommand.Parameters.AddWithValue("@Rate", lblrate.Text);
                                    insertcommand.Parameters.AddWithValue("@CId", cid);
                                    insertcommand.Parameters.AddWithValue("@Amount", amount.ToString());
                                    insertcommand.ExecuteNonQuery();
                                    GridView1.DataBind();
                                    con.Close();
                                    lblkhatra.Visible = true;
                                    lblkhatra.Text = "The record has be registered successfully";
                                    lblkhatra.ForeColor = System.Drawing.Color.White;
                                    lblkhatra.BackColor = System.Drawing.Color.Green;
                                    btnsid.Enabled = true;
                                    txt_quantity.Text = "";
                                  

                                }
                                catch (Exception ex)
                                {
                                    lblkhatra.Visible = true;
                                    lblkhatra.Text = "Please Select a different ID for another entry";
                                    //lblkhatra.Text = "Inner Exception" + ex.ToString();
                                    lblkhatra.ForeColor = System.Drawing.Color.Red;
                                }
                            }


                            else
                            {
                                lblkhatra.Text = "Returning Quantity cannot be greater than Purchased quantity";
                                lblkhatra.Visible = true;
                                lblkhatra.ForeColor = System.Drawing.Color.White;
                                lblkhatra.BackColor = System.Drawing.Color.Red;
                            }
                        }
                        catch (Exception ex)
                        {
                            lblkhatra.Visible = true;
                            lblkhatra.Text = ex.ToString();
                            lblkhatra.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblkhatra.Text = "Returning Quantity cannot be greater than Purchased quantity";
                        lblkhatra.Visible = true;
                        lblkhatra.ForeColor = System.Drawing.Color.White;
                        lblkhatra.BackColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lblkhatra.Text = "Note: Please Select a valid quantity";
                    lblkhatra.Visible = true;
                    lblkhatra.ForeColor = System.Drawing.Color.White;
                    lblkhatra.BackColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblkhatra.Text = "Note: Please fill out all the fields";
                lblkhatra.Visible = true;
                lblkhatra.ForeColor = System.Drawing.Color.White;
                lblkhatra.BackColor = System.Drawing.Color.Red;
            }
        }
    }
}
    
