using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Mobile_Store_Management_System_FYP
{
    public partial class Form_Purchase : System.Web.UI.Page

    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        Guid purchaseid = Guid.NewGuid();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {

            }
            else
            {
                Response.Redirect("Form_Login.aspx");
            }
            string pid = purchaseid.ToString();
            txt_purchaseid.Text = pid;
            lblkhatra.Visible = false;
            lbldone.Visible = false;
            lblsuccess.Visible = false;
            rbtnCash.Checked = true;
            
        }

        protected void btnpurchaseiid(object sender, EventArgs e)
        {
            lblpid.Text = txt_purchaseid.Text;
            btnpurchaseid.Enabled = false;
            txt_purchaseid.Visible = false;
            
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }

        protected void btngetratee(object sender, EventArgs e)
        {
            string productID = ddlproduct.SelectedValue.ToString();
            try
            {
                con.Open();
                SqlDataAdapter DA = new SqlDataAdapter("Select Rate,Quantity from Totalproduct where Name='" + productID + "'", con);
                DataTable dt = new DataTable();
                DA.Fill(dt);
                txt_rate.Text = dt.Rows[0][0].ToString();
                lblqty.Text = dt.Rows[0][1].ToString();
                dt.Clear();            
                txt_rate.Enabled = false;
                con.Close();


            }
            catch (Exception ex)
            {
                lblkhatra.Visible = true;
                lblkhatra.Text = ex.ToString();
            }
        }

        protected void btnadds(object sender, EventArgs e)
        {
            
            try
            {
                int qteey = Convert.ToInt32(txt_quantity.Text);
                if (qteey >= 1)
                {


                    string Id = lblpid.Text;
                    string date = txt_purchasedate.Text;
                    string Sname = ddlsupplier.SelectedValue.ToString();
                    string Pname = ddlproduct.SelectedValue.ToString();
                    int qty = Convert.ToInt32(txt_quantity.Text);
                    int rate = Convert.ToInt32(txt_rate.Text);
                    int amount = qty * rate;
                    int remainingstock = Convert.ToInt32(lblqty.Text) + qty;

                    try
                    {
                        con.Open();
                        int availableqty = Convert.ToInt32(lblqty.Text);
                        int newstock = availableqty + qty;
                        SqlCommand updatecommand = new SqlCommand("Update [Totalproduct] set Quantity =@NEWSTOCK WHERE Name =@PID", con);
                        updatecommand.Parameters.AddWithValue("@NEWSTOCK", newstock.ToString());
                        updatecommand.Parameters.AddWithValue("@PID", Pname);
                        updatecommand.ExecuteNonQuery();
                        con.Close();
                        try
                        {
                            con.Open();
                            SqlCommand insertcommand = new SqlCommand("Insert Into [Purchase] values (@Id,@Date,@Sname,@Pname,@Quantity,@Rate,@Amount) ", con);
                            insertcommand.Parameters.AddWithValue("@Id", Id);
                            insertcommand.Parameters.AddWithValue("@Date", date);
                            insertcommand.Parameters.AddWithValue("@Sname", Sname);
                            insertcommand.Parameters.AddWithValue("@Pname", Pname);
                            insertcommand.Parameters.AddWithValue("@Quantity", txt_quantity.Text);
                            insertcommand.Parameters.AddWithValue("@Rate", txt_rate.Text);
                            insertcommand.Parameters.AddWithValue("@Amount", amount.ToString());
                            insertcommand.ExecuteNonQuery();
                            GridView1.DataBind();
                            con.Close();
                            lbllatest.Text = "Remaining Stock : " + remainingstock;
                            lblkhatra.Visible = true;
                            lblkhatra.Text = "Item ADDED SUCCESSFULLY!";
                            
                            //lblWarning.Text = purchaseid +","+ date + "," +supplierid + "," +productid + "," +txtQuantity.Text + "," +txtPrate.Text + "," +amount.ToString() ;

                            lblkhatra.ForeColor = System.Drawing.Color.White;
                            lblkhatra.BackColor = System.Drawing.Color.Green;
                            //lblkhatra.ForeColor = System.Drawing.Color.Green;

                        }
                        catch (Exception ex)
                        {
                            lblkhatra.Visible = true;
                            lblkhatra.Text = "Inner Exception" + ex.ToString();
                            lblkhatra.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblkhatra.Visible = true;
                        lblkhatra.Text = ex.ToString();
                        lblkhatra.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else {
                    lblkhatra.Text = "Note: Please enter valid quantity";
                    lblkhatra.Visible = true;
                    lblkhatra.ForeColor = System.Drawing.Color.White;
                    lblkhatra.BackColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblkhatra.Text = "Note: Purchase cannot be made with Missing Fields!";
                lblkhatra.Visible = true;
                lblkhatra.ForeColor = System.Drawing.Color.White;
                lblkhatra.BackColor = System.Drawing.Color.Red;
            }
        }

        protected void btnpurchasee(object sender, EventArgs e)
        {
            string pid = lblpid.Text;
            int gridviewrowcount = GridView1.Rows.Count;
            string sid = ddlsupplier.SelectedValue.ToString();
            if (gridviewrowcount >= 1)
            {
                
                if (rbtnCredit.Checked == true)
                {
                    try
                    {
                        con.Open();
                        SqlDataAdapter da = new SqlDataAdapter("SELECT SUM([Amount]) FROM [Purchase] WHERE [Id]='" + pid + "'", con);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        lblTotal.Text = dt.Rows[0][0].ToString();
                        dt.Clear();
                        con.Close();
                        try
                        {
                            con.Open();
                            SqlDataAdapter dab = new SqlDataAdapter("Select [Balance] from [Supplier] where [Suppliername]='" + sid + "'", con);
                            DataTable dt1 = new DataTable();
                            dab.Fill(dt1);
                            int balance = Convert.ToInt32(dt1.Rows[0][0].ToString());
                            int newamount = balance + Convert.ToInt32(lblTotal.Text);
                            SqlCommand cmd = new SqlCommand("Update [Supplier] set Balance = @NewBal where [Suppliername] = @sid", con);
                            cmd.Parameters.AddWithValue("@NewBal", newamount.ToString());
                            cmd.Parameters.AddWithValue("@sid", sid);
                            cmd.ExecuteNonQuery();
                            con.Close();
                            lblsuccess.Visible = true;
                            lblsuccess.Text = "Note: Credit Purchase Successful!! The Balance will be update";
                            lblsuccess.ForeColor = System.Drawing.Color.White;
                            lblsuccess.BackColor = System.Drawing.Color.Green;
                            btnpurchaseid.Enabled = true;
                            txt_quantity.Text = "";
                            txt_purchasedate.Text = "";

                        }
                        catch (Exception ex)
                        {
                            lblkhatra.Visible = true;
                            lblkhatra.Text = "Inner Exception" + ex.ToString();
                            lblkhatra.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        lbldone.Text = ex.ToString();
                        lbldone.Visible = true;
                    }
                }
                else
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter("SELECT SUM([Amount]) FROM [Purchase] WHERE [Id]='" + pid + "'", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    lblTotal.Text = dt.Rows[0][0].ToString();
                    dt.Clear();
                    con.Close();
                    lblsuccess.Visible = true;
                    lblsuccess.Text = "Cash Purchase success! No change in balance!";
                    lblsuccess.ForeColor = System.Drawing.Color.White;
                    lblkhatra.BackColor = System.Drawing.Color.Green;
                    btnpurchaseid.Enabled = true;
                    txt_quantity.Text = "";
                    txt_purchasedate.Text = "";
                }
            }
            else
            {
                lbldone.Text = "Note: Please select some items first!";
                lbldone.Visible = true;
                lbldone.ForeColor = System.Drawing.Color.White;
                lbldone.ForeColor = System.Drawing.Color.Red;

            }
        }
        protected void btndelete(object sender, EventArgs e)
        {
            try
            {
                string ppid = lblpid.Text;
                string name = ddlproduct.Text;
                int qty = Convert.ToInt32(txt_quantity.Text);
                int remainingstock = Convert.ToInt32(lblqty.Text) + qty;
                int qtee = remainingstock - qty;




                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update [Totalproduct] set [Quantity] = @Newquantity where [Name] = @Name", con);
                    cmd.Parameters.AddWithValue("@Newquantity", qtee);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.ExecuteNonQuery();
                    SqlCommand deletecommand = new SqlCommand("Delete From [Purchase] WHERE Id=@Id", con);
                    deletecommand.Parameters.AddWithValue("@Id", ppid);
                    deletecommand.ExecuteNonQuery();
                    GridView1.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                {
                    lblkhatra.Text = ex.ToString();
                    lblkhatra.Visible = true;
                }
            }
            catch (Exception ex)
            {
                lblkhatra.Text = ex.ToString();
                lblkhatra.Visible = true;
            }

        }



    }
}