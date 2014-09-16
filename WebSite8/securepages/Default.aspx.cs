using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class _Default : System.Web.UI.Page
{
    public static int i = 1;
    protected void Page_Load(object sender, EventArgs e)
    {

        Label5.Text = "Welcome  " + User.Identity.Name;
        if (Session["cart"] == null)
        {
            ArrayList cart = new ArrayList();
            Session["cart"] = cart;
        }

        


    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        
        ImageButton2.ImageUrl = "~/img/" + i + "e.jpeg";
        ImageButton3.ImageUrl = "~/img/b" + i + ".jpeg";
        ImageButton4.ImageUrl = "~/img/w" + i + ".jpeg";
        ImageButton5.ImageUrl = "~/img/m" + i + ".jpeg";
       
        i++;
        if (i == 5)
            i = 1;

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/electronics.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/booksAndMedia.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/womens.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/mens.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/securepages/myorder.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/sale.aspx");
    }
}