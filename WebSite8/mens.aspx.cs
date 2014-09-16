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

public partial class mens : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Label8.Text = "Welcome  " + User.Identity.Name;
        if (!IsPostBack)
        {
            string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            SqlConnection con = new SqlConnection(str); 
            SqlDataAdapter data = new SqlDataAdapter("select * from products where product_type='mens'", con);
           

            DataSet ds = new DataSet();
            data.Fill(ds, "prod");
            GridView1.DataSource = ds.Tables["prod"];
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            item obj = new item();

            Label temp = (Label)GridView1.SelectedRow.FindControl("lbl_pid");
            Label temp1 = (Label)GridView1.SelectedRow.FindControl("lbl_pname");
            TextBox temp2 = (TextBox)GridView1.SelectedRow.FindControl("Txt_product_qty");
            Label temp3 = (Label)GridView1.SelectedRow.FindControl("lbl_p_price");

            obj.itemid = Convert.ToInt32(temp.Text);
            obj.name = temp1.Text;
            obj.qty = Convert.ToInt32(temp2.Text);
            obj.price = Convert.ToInt32(temp3.Text);



            Label1.Text = obj.itemid.ToString();
            Label2.Text = temp1.Text;
            Label3.Text = obj.qty.ToString();

            ArrayList cart = (ArrayList)Session["cart"];

            cart.Add(obj);
        }
        catch (Exception exp)
        {
            Response.Redirect("~/mens.aspx");

        }

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/securepages/GenerateBill.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {

            GridView1.PageIndex = e.NewPageIndex;
            string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            SqlConnection con = new SqlConnection(str); SqlDataAdapter data = new SqlDataAdapter("select * from products where product_type='mens'", con);


            DataSet ds = new DataSet();
            data.Fill(ds, "prod");
            GridView1.DataSource = ds.Tables["prod"];
            GridView1.DataBind();
        }
        catch (Exception exp)
        {
            Response.Redirect("~/mens.aspx");
        }
        
    }
}