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

public partial class securepages_myorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label11.Text = "Welcome  " + User.Identity.Name;
        if (!IsPostBack)
        {
            string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            SqlConnection con = new SqlConnection(str);
            con.Open();
            string uname = User.Identity.Name;
            SqlCommand com = new SqlCommand("select order_id from orderMaster1 where customer_name=@cname", con);
            com.Parameters.AddWithValue("@cname",uname);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                string str1 = dr.GetInt32(0).ToString();
                drd_orderid.Items.Add(str1);
            }
            con.Close();
        }
    }
    protected void drd_orderid_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            SqlConnection con = new SqlConnection(str);
            con.Open();
            string ooid = drd_orderid.SelectedItem.ToString();
            //Label8.Text = aid;
            SqlCommand com2 = new SqlCommand("select * from orderMaster1 where order_id=@oid", con);
            com2.Parameters.AddWithValue("@oid", ooid);
            SqlDataReader dr = com2.ExecuteReader();
            dr.Read();

            string uname = User.Identity.Name;
            Label5.Text = dr.GetInt32(0).ToString();
            Label6.Text = uname;
            Label7.Text = dr.GetDateTime(3).ToShortDateString();
            Label8.Text = dr.GetDateTime(4).ToShortDateString();
            Label10.Text = dr.GetInt32(2).ToString();
            dr.Close();


            SqlDataAdapter data = new SqlDataAdapter("select * from orderDetails1 where order_id=@oid", con);
            data.SelectCommand.Parameters.AddWithValue("@oid", ooid);
            DataSet ds = new DataSet();
            data.Fill(ds, "order");
            grid_showbill.DataSource = ds.Tables["order"];
            grid_showbill.DataBind();
            con.Close();

        }
        catch (Exception exp)
        {
            Response.Redirect("~/securepages/myorder.aspx");
        }
       
    }
 
}