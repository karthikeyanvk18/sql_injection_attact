using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections;
using System.Linq;
using System.Xml.Linq;

public partial class login : System.Web.UI.Page
{
    public SqlDataReader dr;
   // string roll, pwd;
    cls_DDL_DML cls = new cls_DDL_DML();
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void btnLogin_Click(object sender, EventArgs e)
    {
       
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select name=un,pwd from emp_details where un='" + txtUserName.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Session["Uid"] = txtUserName.Text;
           // Response.Redirect("welcome.aspx");
        }
    }
      protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select name=un,pwd from emp_details where un=@un",con);
            cmd.Parameters.AddWithValue("@un",txtUn.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Session["Uid"] = txtUn.Text;
           // Response.Redirect("welcome.aspx");
        }

    }
      protected void Button2_Click(object sender, EventArgs e)
      {
          Response.Redirect("welcome.aspx");
      }
      protected void Button3_Click(object sender, EventArgs e)
      {
          Response.Redirect("welcome.aspx");

      }
}

