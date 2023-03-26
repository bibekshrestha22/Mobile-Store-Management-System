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
    public partial class Form_Purchasereturns : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        Guid pretrunsid = Guid.NewGuid();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {

            }
            else
            {
                Response.Redirect("Form_Login.aspx");
            }
            string prid = pretrunsid.ToString();
            txt_prid.Text = prid;
            lblkhatra.Visible = false;
            
            
        }
        protected void btnprid(object sender, EventArgs e)
        {
           
            lblprid.Text = txt_prid.Text;
            btnpridd.Enabled = false;
            txt_prid.Visible = false;
           
 
        }

        protected void btninfo(object sender, EventArgs e)
        {
            string purchaseid = ddlpurchaseid.SelectedValue;
           
     
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("Select [Pname],[Quantity],[Rate],[Sname] FROM [Purchase] where [Id] = '" + purchaseid + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);              
                lblpid.Text = dt.Rows[0][0].ToString();
                lblquantity.Text = dt.Rows[0][1].ToString();
                lblrate.Text = dt.Rows[0][2].ToString();
                lblsname.Text = dt.Rows[0][3].ToString();
                dt.Clear();
                con.Close();

            }
            catch (Exception ex)
            {
                lblkhatra.Text = ex.ToString();
            }
        }

        protected void btndone(object sender, EventArgs e)
        {
            try
            {
                int rqteey = Convert.ToInt32(txt_quantity.Text);

                if (rqteey >= 1)
                {


                    try
                    {

                        string Prid = lblprid.Text;
                        string date = txt_date.Text;
                        string sname = lblsname.Text;
                        string pname = lblpid.Text;
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
                                lblkhatra.Text = "Not enough product quantity in the stock!";
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
                                updatecommand.Parameters.AddWithValue("@PID", pname);
                                updatecommand.ExecuteNonQuery();
                                con.Close();
                                con.Open();
                                SqlCommand updatecommandd = new SqlCommand("Update [Supplier] set Balance =@NEWBALANCE WHERE Suppliername =@Sname", con);
                                updatecommandd.Parameters.AddWithValue("@NEWBALANCE", remainingbalance.ToString());
                                updatecommandd.Parameters.AddWithValue("@Sname", sname);
                                updatecommandd.ExecuteNonQuery();
                                con.Close();
                                try
                                {
                                    con.Open();
                                    SqlCommand insertcommand = new SqlCommand("Insert Into [Purchasereturns] values (@PRId,@Date,@PId,@Pname,@Quantity,@Rate,@Sname,@Amount) ", con);
                                    insertcommand.Parameters.AddWithValue("@PRId", Prid);
                                    insertcommand.Parameters.AddWithValue("@Date", date);
                                    insertcommand.Parameters.AddWithValue("@PId", ddlpurchaseid.SelectedValue);
                                    insertcommand.Parameters.AddWithValue("@Pname", pname);
                                    insertcommand.Parameters.AddWithValue("@Quantity", txt_quantity.Text);
                                    insertcommand.Parameters.AddWithValue("@Rate", lblrate.Text);
                                    insertcommand.Parameters.AddWithValue("@Sname", sname);
                                    insertcommand.Parameters.AddWithValue("@Amount", amount.ToString());
                                    insertcommand.ExecuteNonQuery();
                                    GridView1.DataBind();
                                    con.Close();
                                    lblkhatra.Visible = true;
                                    lblkhatra.Text = "The Purchase retun entry has be registered successfully";
                                    lblkhatra.ForeColor = System.Drawing.Color.White;
                                    lblkhatra.BackColor = System.Drawing.Color.Green;
                                    btnpridd.Enabled  = true;


                                }
                                catch (Exception ex)
                                {
                                    lblkhatra.Visible = true;
                                    lblkhatra.Text = "Inner Exception" + ex.ToString();
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
                            lblkhatra.Text = "Please Select a different ID for another entry";
                            //lblkhatra.Text = ex.ToString();
                            lblkhatra.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblkhatra.Text = "Purchase Returns cant be done with Missing Fields";
                        lblkhatra.Visible = true;
                        lblkhatra.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lblkhatra.Text = "Note: Please Enter a valid quantity";
                    lblkhatra.Visible = true;
                    lblkhatra.ForeColor = System.Drawing.Color.White;
                    lblkhatra.BackColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblkhatra.Text = "Note: Purchase Returns cant be done with Missing Fields";
                lblkhatra.Visible = true;
                lblkhatra.ForeColor = System.Drawing.Color.White;
                lblkhatra.BackColor = System.Drawing.Color.Red;

            }
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }

        protected void btnbalance(object sender, EventArgs e)
        {
            string pname = lblpid.Text;
            String sname = lblsname.Text;
            try
            {
                con.Open();
                SqlDataAdapter dad = new SqlDataAdapter("Select [Quantity] FROM [Totalproduct] where [Name] = '" + pname + "'", con);
                DataTable doo = new DataTable();
                dad.Fill(doo);
                con.Close();
                lbltquantity.Text = doo.Rows[0][0].ToString();
                doo.Clear();

                con.Open();
                SqlDataAdapter dadd = new SqlDataAdapter("Select [Balance] FROM [Supplier] where [Suppliername] = '" + sname + "'", con);
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
                btnpridd.Enabled = true;
                lblkhatra.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}