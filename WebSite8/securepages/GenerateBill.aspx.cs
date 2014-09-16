using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Configuration;

public partial class securepages_GenerateBill : System.Web.UI.Page
{
    public ArrayList cart;
    public string oid;
   
   
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
       

            Label4.Text = "Welcome  " + User.Identity.Name;
            if (!IsPostBack)
            {
                cart = (ArrayList)Session["cart"];
                GridView1.DataSource = cart;
                GridView1.DataBind();
            }
       
     

    }
  
    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            int c = GridView1.Rows.Count;

            int total = 0;
            string pid;

            for (int i = 0; i < c; i++)
            {
                int price, qty;
                Label lprice = (Label)(GridView1.Rows[i].FindControl("lbl_p_price"));
                Label lpid = (Label)(GridView1.Rows[i].FindControl("lbl_pid"));
                TextBox tqty = (TextBox)(GridView1.Rows[i].FindControl("Txt_product_qty"));

                price = Convert.ToInt32(lprice.Text);
                qty = Convert.ToInt32(tqty.Text);
                pid = lpid.Text;

                total = total + (qty * price);

            }



            Label2.Text = total.ToString();



        }
        catch (Exception exp)
        {
            Response.Redirect("~/securepages/GenerateBill.aspx");

        }

        
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
            int c = GridView1.Rows.Count;
            SqlCommand comLoop;
            int total = 0;


            string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            con = new SqlConnection(str);
            con.Open();

            string uname = User.Identity.Name;
            SqlCommand com5 = new SqlCommand("select customer_id from customer_details where customer_name=@cname", con);
            com5.Parameters.AddWithValue("@cname", uname);
            int custid = Convert.ToInt32(com5.ExecuteScalar());

            SqlCommand com = new SqlCommand("insert into orderMaster1 values(@cname,@bill,@bdate,@ddate,@cid)", con);
            com.Parameters.AddWithValue("@cname", User.Identity.Name);
            com.Parameters.AddWithValue("@bill", total);
            com.Parameters.AddWithValue("@bdate", DateTime.Now.Date);
            com.Parameters.AddWithValue("@ddate", DateTime.Now.Date.AddDays(7));
            com.Parameters.AddWithValue("@cid", custid);
            com.ExecuteNonQuery();

            SqlCommand com2 = new SqlCommand("select @@identity", con);
            oid = com2.ExecuteScalar().ToString();

            for (int i = 0; i < c; i++)
            {
                int price, qty;
                Label lprice = (Label)(GridView1.Rows[i].FindControl("lbl_p_price"));
                Label lpid = (Label)(GridView1.Rows[i].FindControl("lbl_pid"));
                TextBox tqty = (TextBox)(GridView1.Rows[i].FindControl("Txt_product_qty"));

                price = Convert.ToInt32(lprice.Text);
                qty = Convert.ToInt32(tqty.Text);
                string pid = lpid.Text;



                comLoop = new SqlCommand("insert into orderDetails1 values(@oid,@pid,@pprice,@pqty)", con);
                comLoop.Parameters.AddWithValue("@oid", oid);
                comLoop.Parameters.AddWithValue("@pid", pid);
                comLoop.Parameters.AddWithValue("@pprice", price);
                comLoop.Parameters.AddWithValue("@pqty", qty);
                comLoop.ExecuteNonQuery();



                total = total + (qty * price);

            }
            SqlCommand com3 = new SqlCommand("update orderMaster1 set total_ammount=@total where order_id=@oid", con);
            com3.Parameters.AddWithValue("@total", total);
            com3.Parameters.AddWithValue("@oid", oid);
            com3.ExecuteNonQuery();

            con.Close();


            Response.Redirect("~/securepages/showBill.aspx");
        
     
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int index = GridView1.SelectedIndex;
            cart = (ArrayList)Session["cart"];
            cart.RemoveAt(index);
            GridView1.DataSource = cart;
            GridView1.DataBind();
        }
        catch (Exception exp)
        {
            Response.Redirect("~/securepages/GenerateBill.aspx");

        }
    }
}