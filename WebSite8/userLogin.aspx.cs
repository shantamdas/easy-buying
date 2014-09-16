using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class userLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        try
        {
            String cid = Login1.UserName;
            string cpass = Login1.Password;

            string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand com = new SqlCommand("select * from customer_details where customer_name=@cname and customer_password=@cpass", con);
            com.Parameters.AddWithValue("@cname", cid);
            com.Parameters.AddWithValue("@cpass", cpass);

            int count = Convert.ToInt32(com.ExecuteScalar());
            if (count > 0)
            {
                e.Authenticated = true;
            }
            else
            {
                e.Authenticated = false;
            }
        }
        catch(Exception exp)
        {
            Response.Redirect("~/userLogin.aspx");
        }
        
    
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=shantamLapi\SQLExpress;Initial Catalog=e-purchase;Integrated Security=True");
            con.Open();

            SqlCommand com = new SqlCommand("insert into customer_details values(@cpass,@cname,@cmailid,@cmobile,@caddress,@cage)", con);
            com.Parameters.AddWithValue("@cpass", txt_pass.Text);
            com.Parameters.AddWithValue("@cname", txt_cname.Text);
            com.Parameters.AddWithValue("@cmailid", txt_mailid.Text);
            com.Parameters.AddWithValue("@cmobile", txt_mbile.Text);
            com.Parameters.AddWithValue("@caddress", txt_add.Text);
            com.Parameters.AddWithValue("@cage", txt_age.Text);
            com.ExecuteNonQuery();

            SqlCommand com2 = new SqlCommand("select @@identity", con);
            int custid = Convert.ToInt32(com2.ExecuteScalar());

            con.Close();


            txt_add.Text = "";
            txt_age.Text = "";
            txt_cname.Text = "";
            txt_mailid.Text = "";
            txt_mbile.Text = "";
            txt_pass.Text = "";
            TextBox4.Text = "";
            Response.Redirect("~/userLogin.aspx");
        }
        catch (Exception exp)
        {
            Response.Redirect("~/userLogin.aspx");
        }
        
    }
}