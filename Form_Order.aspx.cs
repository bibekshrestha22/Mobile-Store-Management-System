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
    public partial class Form_Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string oid = orderid.ToString();
            txtoid.Text = oid;
            lblWarning.Visible = false;
            lblDanger.Visible = false;

            if(GridView1.Rows.Count<1){
                total.Visible = false;

            }

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        Guid orderid = Guid.NewGuid();
        DataTable dt = new DataTable();

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {


                int oqtyy = Convert.ToInt32(txt_quantity.Text);
                if (oqtyy >= 1)
                {


                    if (txt_date.Text != "" || txt_quantity.Text != "" || txt_rate.Text != "")
                    {


                        string oid = lbloid.Text;
                        string cname = lblCustomerName.Text;
                        int qty = Convert.ToInt32(txt_quantity.Text);
                        int rate = Convert.ToInt32(txt_rate.Text);
                        int amount = qty * rate;
                        string date = txt_date.Text;
                        string productname = DropDownList2.SelectedItem.ToString();
                        string productid = DropDownList2.SelectedValue.ToString();
                        string cid = ddlCustomerID.SelectedValue;

                        try
                        {

                            try
                            {
                                con.Open();
                                SqlCommand insert = new SqlCommand("Insert into [Orders] values (@Id,@OrderDate,@CustomerName,@OrderingProduct,@PID,@Quantity,@Rate,@Total,@CID)", con);
                                insert.Parameters.AddWithValue("@Id", oid);
                                insert.Parameters.AddWithValue("@OrderDate", date);
                                insert.Parameters.AddWithValue("@CustomerName", cname);
                                insert.Parameters.AddWithValue("@OrderingProduct", productname);
                                insert.Parameters.AddWithValue("@PID", productid);
                                insert.Parameters.AddWithValue("@Quantity", qty);
                                insert.Parameters.AddWithValue("@Rate", rate);
                                insert.Parameters.AddWithValue("@Total", amount);
                                insert.Parameters.AddWithValue("@CID", cid);

                                insert.ExecuteNonQuery();
                                GridView1.DataBind();
                                con.Close();
                                lblDanger.Visible = true;
                                lblDanger.Text = "Item Inserted. Confirm down to complete the order process.";
                                lblDanger.ForeColor = System.Drawing.Color.White;
                                lblDanger.BackColor = System.Drawing.Color.Green;
                                string Id = lbloid.Text;
                                string Orderingproduct = DropDownList2.SelectedItem.ToString();
                                total.Visible = true;
                                DataTable dt = new DataTable();
                                con.Open();
                                SqlCommand datotalamount = new SqlCommand("Select sum(Total) from [Orders] where [Id]=@Id", con);
                                datotalamount.Parameters.AddWithValue("@Id", Id);

                                datotalamount.ExecuteNonQuery();
                                SqlDataAdapter da = new SqlDataAdapter(datotalamount);

                                da.Fill(dt);



                                total.Text = dt.Rows[0][0].ToString();
                                con.Close();
                                total.ForeColor = System.Drawing.Color.Black;
                                total.BackColor = System.Drawing.Color.White;

                            }

                            catch (Exception ex)

                            {
                                lblDanger.Text = ex.ToString();
                            }
                        }

                        catch (Exception ex)
                        {
                            lblDanger.Visible = true;
                            lblDanger.Text = "Empty Order cannot be made.!.";
                            lblDanger.ForeColor = System.Drawing.Color.White;
                            lblDanger.BackColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        lblDanger.Visible = true;
                        lblDanger.Text = "Empty Order cannot be made.!.";
                        lblDanger.ForeColor = System.Drawing.Color.White;
                        lblDanger.BackColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lblDanger.Visible = true;
                    lblDanger.Text = "Note: Please Enter a valid quantity";
                    lblDanger.ForeColor = System.Drawing.Color.White;
                    lblDanger.BackColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblDanger.Visible = true;
                lblDanger.Text = "Note: Empty Order cannot be made.!.";
                lblDanger.ForeColor = System.Drawing.Color.White;
                lblDanger.BackColor = System.Drawing.Color.Red;
            }

            //con.Open();
            //string insertorder =
            //    "INSERT into [Orders] (Id,OrderDate,CustomerName,OrderingProduct,Quantity,Advance) values (@Id,@OrderDate,@CustomerName,@OrderingProduct,@Quantity,@Advance)";
            //Guid id = Guid.NewGuid();
            //SqlCommand cmd = new SqlCommand(insertorder, con);

            //cmd.Parameters.AddWithValue("@Model", txt_model.Text);
            //cmd.Parameters.AddWithValue("@Quantity", txt_quantity.Text);
            //cmd.Parameters.AddWithValue("@Rate", txt_rate.Text);
            //cmd.Parameters.AddWithValue("@Total", amount.ToString());
            //cmd.Parameters.AddWithValue("@Supplier", ddlist2.Text);
            //cmd.ExecuteNonQuery();
            //GridView3.DataBind();
        }

        protected void CustomerInfo_Click(object sender, EventArgs e)
        {
            string cid = ddlCustomerID.SelectedValue;
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("Select [Name] from [customers] where [Id] ='" + cid + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                lblCustomerName.Text = dt.Rows[0][0].ToString();
                con.Close();
                dt.Clear();
            }
            catch (Exception ex)
            {
                lblWarning.Visible = true;
                lblWarning.Text = ex.ToString();
                lblWarning.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void bntGetId_Click(object sender, EventArgs e)
        {

            lbloid.Text = txtoid.Text;
            GetOrderID.Enabled = false;
            lblGetOrderID.Visible = false;
        }

        protected void getrate_Click(object sender, EventArgs e)
        {
            string productID = DropDownList2.SelectedValue.ToString();
            try
            {
                con.Open();
                SqlDataAdapter DA = new SqlDataAdapter("Select [Sellingrate] from Totalproduct where PId='" + productID + "'", con);
                DataTable dt = new DataTable();
                DA.Fill(dt);
                con.Close();
                txt_rate.Text = dt.Rows[0][0].ToString();

            }
            catch (Exception ex)
            {
                lblWarning.Visible = true;
                lblWarning.Text = ex.ToString();
            }

        }
        

        protected void btnFinal_Click(object sender, EventArgs e)
        {
            int gridviewrowcount = GridView1.Rows.Count;
            if (gridviewrowcount >= 1)
            {
                lblWarning.Visible = true;
                lblWarning.Text = "Order Completed Successfully";
                lblWarning.ForeColor = System.Drawing.Color.White;
                lblWarning.BackColor = System.Drawing.Color.Green;
                txt_rate.Text = "";
                txt_quantity.Text = "";
                txt_date.Text = "";
                GetOrderID.Enabled = true;
                lbloid.Text = "New Order Id";

            }
            else
            {
                lblWarning.Visible = true;
                lblWarning.Text = "Please Select some products first";
                lblWarning.ForeColor = System.Drawing.Color.White;
                lblWarning.BackColor = System.Drawing.Color.Red;
            }


        }
        protected void btndelete1(object sender, EventArgs e)
        {
            string oid = lbloid.Text;
            try
            {
                con.Open();
                SqlCommand deletecommand = new SqlCommand("Delete From [Orders] WHERE Id=@Id", con);
                deletecommand.Parameters.AddWithValue("@Id", oid);
                deletecommand.ExecuteNonQuery();
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                lblWarning.Text = ex.ToString();
                lblWarning.Visible = true;
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }
    }
    }

