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
    public partial class Form_Sales : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        Guid salesid = Guid.NewGuid();
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
            txt_email.Enabled = false;
            txt_contact.Enabled = false;
            string sid = salesid.ToString();
            txtsid.Text = sid;
            txtcname.Enabled = false;
            lblkhatra.Visible = false;
            lblsuccess.Visible = false;
            rbtnCash.Checked = true;
            
        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            string naam = ddlitemlist.Text.ToString();
            string customerid = ddlcustomer.SelectedValue.ToString();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT [Contact],[Id],[Email] from customers where [id] ='"+customerid+"'",con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            txt_contact.Text = dt.Rows[0][0].ToString();
            txtcname.Text = dt.Rows[0][1].ToString();
            txt_email.Text = dt.Rows[0][2].ToString();
            

        }

        protected void btnSelectCategory_Click(object sender, EventArgs e)
        {
            string itemname = ddlitemlist.SelectedValue.ToString();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT [Name],[Quantity],[Rate] from Totalproduct where [PId] ='"+itemname+"'  ", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            txtAvailableQuantity.Text = dt.Rows[0][1].ToString();
            txtPurchasedRate.Text = dt.Rows[0][2].ToString();
            itemnaam.Text= dt.Rows[0][0].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string sid = lblsid.Text;
                string customerid = ddlcustomer.SelectedItem.ToString();
                string productid = ddlitemlist.SelectedValue.ToString();
                int qty = Convert.ToInt32(txtSellingQuantity.Text);
                int rate = Convert.ToInt32(txtSellingRate.Text);
                int prate = Convert.ToInt32(txtPurchasedRate.Text);

                int amount = qty * rate;
                if (prate < rate)
                {


                    try
                    {
                        if (qty <= Convert.ToInt32(txtAvailableQuantity.Text))
                        {
                            lblkhatra.Visible = true;
                            int remainingstock = Convert.ToInt32(txtAvailableQuantity.Text) - qty;

                            lblkhatra.ForeColor = System.Drawing.Color.Red;
                            try
                            {
                                con.Open();
                                int stockedquantity = Convert.ToInt32(txtAvailableQuantity.Text);
                                int newstock = stockedquantity - qty;
                                SqlCommand updatecommand = new SqlCommand("Update [Totalproduct] set Quantity =@NEWSTOCK WHERE PId =@PID", con);
                                updatecommand.Parameters.AddWithValue("@NEWSTOCK", newstock.ToString());
                                updatecommand.Parameters.AddWithValue("@PID", productid);
                                updatecommand.ExecuteNonQuery();
                                con.Close();

                                try
                                {
                                    con.Open();
                                    SqlCommand insertcommand = new SqlCommand("Insert Into [Sales] values (@Id,@Name,@CID,@Item,@Date,@Purchaserate,@Salesrate,@Sellingquantity,@Total) ", con);
                                    insertcommand.Parameters.AddWithValue("@Id", sid);
                                    insertcommand.Parameters.AddWithValue("@Name", customerid );
                                    insertcommand.Parameters.AddWithValue("@CID", txtcname.Text);
                                    insertcommand.Parameters.AddWithValue("@Item", itemnaam.Text);
                                    insertcommand.Parameters.AddWithValue("@DATE", txt_date.Text);
                                    insertcommand.Parameters.AddWithValue("@Purchaserate", txtPurchasedRate.Text);
                                    insertcommand.Parameters.AddWithValue("@Salesrate", txtSellingRate.Text);
                                    insertcommand.Parameters.AddWithValue("@Sellingquantity", txtSellingQuantity.Text);
                                    insertcommand.Parameters.AddWithValue("@Total", amount.ToString());
                                    insertcommand.ExecuteNonQuery();
                                    GridView1.DataBind();
                                    con.Close();
                                    lblkhatra.Visible = true;
                                    lblkhatra.Text = "Note: Item Successfully Added";
                                    lbllatest.Text = "Remaining Stock : " + remainingstock;
                                    lblkhatra.ForeColor = System.Drawing.Color.White;
                                    lblkhatra.BackColor = System.Drawing.Color.Green;

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
                                Response.Write(ex.ToString());
                            }

                        }
                        else
                        {
                            lblkhatra.Visible = true;
                            lblkhatra.Text = "Sales Qantity shouldnot be greater than the stocked good";
                            lblkhatra.ForeColor = System.Drawing.Color.White;
                            lblkhatra.BackColor = System.Drawing.Color.Red;
                        }

                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }
                else
                {
                    lblkhatra.Visible = true;
                    lblkhatra.Text = "Products cannot be sold below the purchased price";
                    lblkhatra.ForeColor = System.Drawing.Color.White;
                    lblkhatra.BackColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblkhatra.Visible = true;
                lblkhatra.Text = " Sales cannot be done while the fields are empty!";
                lblkhatra.ForeColor = System.Drawing.Color.White;
                lblkhatra.BackColor = System.Drawing.Color.Red;
                
            }
        }

    



            //int availablequantity = Convert.ToInt32(txtAvailableQuantity.Text);
            //int sellingquantity = Convert.ToInt32(txtSellingQuantity.Text);
            //if (sellingquantity>availablequantity)
            //{
            //    lblkhatra.Visible = true;
            //    lblkhatra.Text = "Selling Quantity cannot be greater than Available quantity";
            //    lblkhatra.ForeColor = System.Drawing.Color.Red;

            //}
            //else
            //{
            //    con.Open();
            //    string sid = lblsid.Text;

            //    string customerid = ddlcustomer.SelectedValue.ToString();
            //    string productid = ddlitemlist.SelectedValue.ToString();
            //    int qty = Convert.ToInt32(txtSellingQuantity.Text);
            //    int rate = Convert.ToInt32(txtSellingRate.Text);
            //    int amount = qty * rate;
            //    string insertsales =
            //           "INSERT into [Sales] (Id,Name,Number,Address,Email,Item,Date,Purchaserate,Salesrate,Sellingquantity) values (@Id,@Name,@Number,@Address,@Email,@Item,@Date,@Purchaserate,@Salesrate,@Sellingquantity)";
            //    SqlCommand cmd = new SqlCommand(insertsales, con);
            //    cmd.Parameters.AddWithValue("@Id", sid);
            //    cmd.Parameters.AddWithValue("@Name", ddlcustomer.Text);
            //    cmd.Parameters.AddWithValue("@Number", txt_contact.Text);
            //    cmd.Parameters.AddWithValue("@Address", txt_address .Text);
            //    cmd.Parameters.AddWithValue("@Email", txt_email.Text);
            //    cmd.Parameters.AddWithValue("@Item", ddlitemlist.Text);
            //    cmd.Parameters.AddWithValue("@Date", txt_date.Text);
            //    cmd.Parameters.AddWithValue("@Purchaserate", txtPurchasedRate.Text);
            //    cmd.Parameters.AddWithValue("@Salesrate", txtSellingRate.Text);
            //    cmd.Parameters.AddWithValue("@Sellingquantity", txtSellingQuantity.Text);
            //    cmd.ExecuteNonQuery();
            //    GridView1.DataBind();

            //    lblkhatra.Visible = true;
            //    int remainingstock = Convert.ToInt32(lblAvailableQuantity.Text) - qty;
            //    lblkhatra.Text = "Remaining Stock : " + remainingstock;
            //    lblkhatra.ForeColor = System.Drawing.Color.Red;
       

        protected void bntGetId_Click(object sender, EventArgs e)
        {
            lblsid.Text = txtsid.Text;
            btngetid.Enabled = false;
            lblGetSalesID.Visible = false;
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }
        protected void latest()
        {
            string ui = ddlitemlist.Text;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select Quantity from Totalproduct where Name='" + ui + "'  ", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            lbllatest.Text = dt.Rows[0][1].ToString();
        }

        protected void btnsales(object sender, EventArgs e)
        {
            string salesid = lblsid.Text;
            int gridviewrowcount = GridView1.Rows.Count;
            string customerid = ddlcustomer.SelectedValue.ToString();
            if (gridviewrowcount >= 1)
            {
                lblsuccess.Visible = true;
                if (rbtnCredit.Checked == true)
                {
                    try
                    {
                        con.Open();
                        SqlDataAdapter da = new SqlDataAdapter("SELECT SUM([Total]) FROM [Sales] WHERE [Id]='" + salesid + "'", con);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        lbltotal.Text = dt.Rows[0][0].ToString();
                        dt.Clear();
                        con.Close();
                        try
                        {
                            con.Open();
                            SqlDataAdapter dab = new SqlDataAdapter("Select [Balance] from [customers] where [Id]='" + customerid + "'", con);
                            DataTable dt1 = new DataTable();
                            dab.Fill(dt1);
                            int amount = Convert.ToInt32(dt1.Rows[0][0].ToString());
                            int newamount = amount + Convert.ToInt32(lbltotal.Text);
                            SqlCommand cmd = new SqlCommand("Update [customers] set [Balance] = @NewBal where [Id] = @Cid", con);
                            cmd.Parameters.AddWithValue("@NewBal", newamount.ToString());
                            cmd.Parameters.AddWithValue("@Cid", customerid);
                           
                            
                          
                            cmd.ExecuteNonQuery();
                            lblsuccess.Visible = true;
                            lblsuccess.Text = "Note: Purchase Successful!! The balance is updated!";
                            lblsuccess.ForeColor = System.Drawing.Color.White;
                            lblsuccess.BackColor = System.Drawing.Color.Green;
                            con.Close();
                            txtAvailableQuantity.Text = "";
                            txtcname.Text = "";
                            txtPurchasedRate.Text = "";
                            txtSellingQuantity.Text = "";
                            txtSellingRate.Text = "";
                            txt_date.Text = "";
                            txt_email.Text = "";
                            btngetid.Enabled = true;
                           

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
                        lblsuccess.Text = ex.ToString();
                        lblsuccess.Visible = true;
                    }
                }
                else
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter("SELECT SUM([Total]) FROM [Sales] WHERE [Id]='" + salesid + "'", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    lbltotal.Text = dt.Rows[0][0].ToString();
                    dt.Clear();
                    con.Close();
                    lblsuccess.Text = "Purchase Successful! NOTE: Balance is not recorded in Cash Sales";
                    lblsuccess.Visible = true;
                    lblsuccess.ForeColor = System.Drawing.Color.White;
                    lblsuccess.BackColor = System.Drawing.Color.Green;
                    txtAvailableQuantity.Text = "";
                    txtcname.Text = "";
                    txtPurchasedRate.Text = "";
                    txtSellingQuantity.Text = "";
                    txtSellingRate.Text = "";
                    txt_date.Text = "";
                    txt_email.Text = "";
                    btngetid.Enabled = true;
                }
            }
            else
            {
                lblsuccess.Visible = true;
                lblsuccess.Text = "Please Make Sure you have selected at least one item for Purchase";
                lblsuccess.ForeColor = System.Drawing.Color.White;
                lblsuccess.BackColor = System.Drawing.Color.Red;




            }
        }
        protected void btndelete(object sender, EventArgs e)
        {
            //lbllatest.Text = lbllatest1.Text;
            string ssid = lblsid.Text;
            string name = itemnaam.Text;
            int qty = Convert.ToInt32(txtSellingQuantity.Text);
          
            int remainingstock = Convert.ToInt32(txtAvailableQuantity.Text) - qty;
            int qtee = remainingstock+qty;

          
            
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update [Totalproduct] set [Quantity] = @Newquantity where [Name] = @Name", con);
                    cmd.Parameters.AddWithValue("@Newquantity", qtee);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.ExecuteNonQuery();
                    SqlCommand deletecommand = new SqlCommand("Delete From [Sales] WHERE Id=@Id", con);
                    deletecommand.Parameters.AddWithValue("@Id", ssid);
                    deletecommand.ExecuteNonQuery();
                    GridView1.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                {
                    lblsuccess.Text = ex.ToString();
                    lblsuccess.Visible = true;
                }
               
        }

        protected void calculate(object sender, EventArgs e)
        {

            //int vat = Convert.ToInt32(txt_vat.Text);
            if (txtSellingRate.Text != "" || txt_discount.Text != "")
            {
                int sellingrate = Convert.ToInt32(txtSellingRate.Text);
                double discount = Convert.ToDouble(txt_discount.Text);
                double discountedamount = sellingrate - (discount / 100) * sellingrate;
                txt_da.Text = Convert.ToString(discountedamount);
                txtSellingRate.Text = txt_da.Text;
            }
            
            else
            {
                lblkhatra.Visible = true;
                lblkhatra.Text = "Missing fields";
                lblkhatra.ForeColor = System.Drawing.Color.Red;
            }
           
                
                    
                    



                
                
            }
        }
    }

    //protected void Button2_Click(object sender, EventArgs e)
    ////{
    //    string custumer = ddlcustomer.SelectedValue;

    //    txt_contact.Text = custumer;
    //    txt_address.Text = custumer;
    //    txt_email.Text = custumer;
    //    try
    //    {
    //        con.Open();
    //        SqlDataAdapter da = new SqlDataAdapter("Select [Contact], [Address], [Email] FROM [customers] where [CID] = '" + custumer + "'", con);
    //        DataTable dt = new DataTable();
    //        da.Fill(dt);
    //        con.Close();
    //        lblPreviousBalance.Text = dt.Rows[0][0].ToString();
    //        dt.Clear();
    //    }
    //    catch (Exception ex)
    //    {
    //        lblCustomerId.Text = ex.ToString();
    //    }


