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

public partial class securepages_showBill : System.Web.UI.Page
{
    public ArrayList cart;
    public string oid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        Label12.Text = "Welcome  " + User.Identity.Name;

        string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        
        con.Open();

            string uname = User.Identity.Name;


           
            SqlCommand com = new SqlCommand("select order_id from orderMaster1 where customer_name=@cname", con);
            com.Parameters.AddWithValue("@cname", uname);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                oid = dr.GetInt32(0).ToString();
            }
            dr.Close();

            
            
      
            SqlCommand com1 = new SqlCommand("select order_id from orderMaster1 where customer_name=@cname", con);
            com1.Parameters.AddWithValue("@cname",uname);

           
        
            SqlCommand com2 = new SqlCommand("select * from orderMaster1 where order_id=@oid", con);
            com2.Parameters.AddWithValue("@oid", oid);
            SqlDataReader dr1 = com2.ExecuteReader();
            dr1.Read();

            Label5.Text = dr1.GetInt32(0).ToString(); 
            Label6.Text = uname;
            Label7.Text = dr1.GetDateTime(3).ToShortDateString();
            Label8.Text = dr1.GetDateTime(4).ToShortDateString();
            Label10.Text = dr1. GetInt32(2).ToString() ;
            dr1.Close();
            
            
            SqlDataAdapter data = new SqlDataAdapter("select * from orderDetails1 where order_id=@oid", con);
            data.SelectCommand.Parameters.AddWithValue("@oid",oid);
            DataSet ds = new DataSet();
            data.Fill(ds, "order");
            grid_showbill.DataSource = ds.Tables["order"];
            grid_showbill.DataBind();
            con.Close();
            

            
        
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Session.Clear();
        
        Response.Redirect("~/securepages/Default.aspx");
    }
}