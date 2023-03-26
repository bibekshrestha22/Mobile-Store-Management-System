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
    public partial class Homepage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobileStoreCONNECTIONSTRING"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            lowstock();
            highstock();
            cheapestproduct();
            expensiveproduct();
            todaypurchase();
            totalpurchase();
            todaysales();
            totalsales();
            orderinformation();
            ordertoday();
            ordersupplier();
            ordersuppliertoday();

            if (Session["new"] != null)
            {
                string username = Session["new"].ToString();
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("Select userlevel from [Login] where Username='" + username + "'", con);
                DataTable dt = new DataTable();
                con.Close();
                da.Fill(dt);
                int userlevel = Convert.ToInt32(dt.Rows[0][0].ToString());
                if (userlevel == 1)
                {
                    //btnProduct.Visible = true;
                    //btnProduct.Visible = true;
                    //ImageButton1.Visible = true;
                    Btnpr.Visible = true;
                    Btnpr0.Visible = true;
                    btnregister.Visible = true;


                }
                else
                {
                    //btnCustomer.Visible = false;
                    //btnProduct.Visible = false;
                    //ImageButton1.Visible = false;
                    Btnpr.Visible = false;
                    Btnpr0.Visible = false;
                    btnregister.Visible = false;

                }
            }
            else
            {
                Response.Redirect("Form_Login.aspx");
            }

        }

        protected void btnyes_Click(object sender, EventArgs e)
        {
            Session["new"] = "";
            Response.Redirect("Form_Login.aspx");
        }

        protected void btnSignout_Click(object sender, EventArgs e)
        {


        }
        protected void lowstock()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Totalproduct where Quantity=(select min(Quantity) from Totalproduct)", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            lbllowname.Text = dt.Rows[0][1].ToString();
            imglowstock.ImageUrl = dt.Rows[0][5].ToString();
            lbllowqty.Text = dt.Rows[0][2].ToString();

        }
        protected void highstock()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Totalproduct where Quantity=(select max(Quantity) from Totalproduct)", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            lblhighname.Text = dt.Rows[0][1].ToString();
            imagehigh.ImageUrl = dt.Rows[0][5].ToString();
            lblhighqty.Text = dt.Rows[0][2].ToString();
        }
        protected void expensiveproduct()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Totalproduct where Rate = (select max(Rate) from Totalproduct)", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            imgexpensiveitem.ImageUrl = dt.Rows[0][5].ToString();
            lblexpensivename.Text = dt.Rows[0][1].ToString();
            lblprice.Text = "Rs. " + dt.Rows[0][3].ToString();
        }
        protected void cheapestproduct()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Totalproduct where Rate = (select min(Rate) from Totalproduct)", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            imgCheapProduct.ImageUrl = dt.Rows[0][5].ToString();
            lblcheapname.Text = dt.Rows[0][1].ToString();
            lblcheapprice.Text = "Rs. " + dt.Rows[0][3].ToString();

        }
        protected void todaypurchase()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select Count(distinct [Id]) as PurchasesToday from [Purchase] where [Date] >= getdate()-1 and [Date] <= GETDATE()", con);
            DataTable dt = new DataTable();
            SqlDataAdapter datotalamount = new SqlDataAdapter("select sum(Amount) from [Purchase] where [Date] >= getdate()-1 and [Date] <= GETDATE()", con);
            DataTable dtamount = new DataTable();
            datotalamount.Fill(dtamount);
            da.Fill(dt);
            con.Close();
            lblPurchaseToday.Text = dt.Rows[0][0].ToString();
            lblPurchaseAmountToday.Text = dtamount.Rows[0][0].ToString();
        }
        protected void totalpurchase()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select count(distinct [Id]) from [Purchase]", con);
            DataTable dt = new DataTable();
            SqlDataAdapter datotalamount = new SqlDataAdapter("select sum([Amount]) from [Purchase]", con);
            DataTable dtamount = new DataTable();
            datotalamount.Fill(dtamount);
            da.Fill(dt);
            con.Close();
            lblTotalPurchases.Text = dt.Rows[0][0].ToString();
            lblTotalPurchaseAmount.Text = dtamount.Rows[0][0].ToString();
        }
        protected void todaysales()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select Count(distinct [Id]) as PurchasesToday from [Sales] where [Date] >= getdate()-1 and [Date] <= GETDATE()", con);
            DataTable dt = new DataTable();
            SqlDataAdapter datotalamount = new SqlDataAdapter("select sum(Total) from [Sales] where [Date] >= getdate()-1 and [DATE] <= GETDATE()", con);
            DataTable dtamount = new DataTable();
            datotalamount.Fill(dtamount);
            da.Fill(dt);
            con.Close();
            lblsodaysales.Text = dt.Rows[0][0].ToString();
            lblsAmount.Text = dtamount.Rows[0][0].ToString();
        }

        private void totalsales()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select count(distinct [Id]) from [Sales]", con);
            DataTable dt = new DataTable();
            SqlDataAdapter datotalamount = new SqlDataAdapter("select sum([Total]) from [Sales]", con);
            DataTable dtamount = new DataTable();
            datotalamount.Fill(dtamount);
            da.Fill(dt);
            con.Close();
            lbltotalsales.Text = dt.Rows[0][0].ToString();
            lbltotalamount.Text = dtamount.Rows[0][0].ToString();
        }
         protected void orderinformation()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select count(distinct Id) from [Orders]", con);
            DataTable dt = new DataTable();
            SqlDataAdapter datotalamount = new SqlDataAdapter("select sum(Total) FROM [Orders]", con);
            DataTable dtamount = new DataTable();
            datotalamount.Fill(dtamount);
            da.Fill(dt);
            con.Close();
            lblallorders.Text = dt.Rows[0][0].ToString();
            lbltotalordersamount.Text = dtamount.Rows[0][0].ToString();
        }
        protected void ordertoday()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select Count(distinct ID) from [Orders] where OrderDate >= getdate()-1 and OrderDate <= GETDATE()", con);
            DataTable dt = new DataTable();
            SqlDataAdapter datotalamount = new SqlDataAdapter("select sum(Total) from [Orders] where OrderDate >= getdate()-1 and OrderDate <= GETDATE()", con);
            DataTable dtamount = new DataTable();
            datotalamount.Fill(dtamount);
            da.Fill(dt);
            con.Close();
            lbltodayorders.Text = dt.Rows[0][0].ToString();
            lbltodayamount.Text = dtamount.Rows[0][0].ToString();
        }
        protected void ordersupplier()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select count(distinct OId) from [Ordersupplier]", con);
            DataTable dt = new DataTable();
            SqlDataAdapter datotalamount = new SqlDataAdapter("select sum(Amount) FROM [Ordersupplier]", con);
            DataTable dtamount = new DataTable();
            datotalamount.Fill(dtamount);
            da.Fill(dt);
            con.Close();
            lbltotalsorder.Text = dt.Rows[0][0].ToString();
            lbltotalsorderamount.Text = dtamount.Rows[0][0].ToString();
        }
        protected void ordersuppliertoday()
        {

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select Count(distinct OId) from [Ordersupplier] where Date >= getdate()-1 and DATE <= GETDATE()", con);
            DataTable dt = new DataTable();
            SqlDataAdapter datotalamount = new SqlDataAdapter("select sum(Amount) from [Ordersupplier] where Date >= getdate()-1 and DATE <= GETDATE()", con);
            DataTable dtamount = new DataTable();
            datotalamount.Fill(dtamount);
            da.Fill(dt);
            con.Close();
            lblsordertoday.Text = dt.Rows[0][0].ToString();
            lblsorderamount.Text = dtamount.Rows[0][0].ToString();

        }






        protected void btnregisterr(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Btnpr_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form_Purchasereturns.aspx");
        }

        protected void Btnpr0_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form_Salesreturn.aspx");
        }
    }
}
