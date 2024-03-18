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

public partial class Default2 : System.Web.UI.Page
{
    cls_DDL_DML cls = new cls_DDL_DML();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from policy_holder", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
                   }
    }

}
