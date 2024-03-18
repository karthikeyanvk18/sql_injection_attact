using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Windows.Forms;
using System.Data.SqlClient;


public partial class agent_details : System.Web.UI.Page
{
    cls_DDL_DML cls=new cls_DDL_DML();
  //  public SqlConnection cn;
 //   public SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        cls.cls_DDL_DM();
        cls.cmd = new SqlCommand("insert into agent(emp_code,emp_name,dob,doj,gender,qualif) values(@emp_code,@emp_name,@dob,@doj,@gender,@qualif)",cls.con);
        cls.cmd.Parameters.AddWithValue("@emp_code",txtEmployeeCode.Text);
        cls.cmd.Parameters.AddWithValue("@emp_name",txtName.Text);
        cls.cmd.Parameters.AddWithValue("@dob",TextBox1.Text);
        cls.cmd.Parameters.AddWithValue("@doj",TextBox2.Text);
        cls.cmd.Parameters.AddWithValue("@gender",DropDownList1.SelectedItem.ToString());
        cls.cmd.Parameters.AddWithValue("@qualif",txtQualification.Text);
               cls.cmd.ExecuteNonQuery();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        cls.cls_DDL_DM();
        cls.cmd=new SqlCommand("insert into agent values('" + txtEmployeeCode.Text + "','" + txtName.Text + "','" + TextBox1 .Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + txtQualification.Text + "')",cls.con);
       cls.cmd.ExecuteNonQuery();
            cls.con.Close();
            MessageBox.Show(txtEmployeeCode.Text);
                MessageBox.Show("Agent is Added");
    }
    protected void Button2_Click(object sender, EventArgs e)
    { DataTable dt = new DataTable();
    using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
    {
        SqlCommand cmd = new SqlCommand("select emp_code,emp_name,dob,doj,gender,qualif from agent where emp_code=@emp_code", con);
        cmd.Parameters.AddWithValue("@emp_code", txtEmployeeCode.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        con.Close();
        GridView1.DataSource = dt;
        GridView1.DataBind();
      
    }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
        {
            SqlCommand cmd = new SqlCommand("select emp_code,emp_name,dob,doj,gender,qualif from agent where emp_code='" + txtEmployeeCode.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
           
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("select max(emp_code) from agent", con);
            //   dr2 = cmd.ExecuteReader();
            //data.DBReaderOpen("select max(uid) from userinfo");

            int x = 1, y;
            y = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
            txtEmployeeCode.Text = y.ToString();

        }
    }
}
