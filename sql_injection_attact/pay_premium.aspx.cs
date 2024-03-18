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

public partial class pay_premium : System.Web.UI.Page
{
    public SqlCommand cmd;
    public SqlDataReader dr, dr1, dr2;
    cls_DDL_DML cls = new cls_DDL_DML();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select distinct cusid from policy_holder", con);
                dr1 = cmd1.ExecuteReader();
                DropDownList1.Items.Clear();
                DropDownList1.Items.Add("--select--");
                while (dr1.Read())
                {
                    DropDownList1.Items.Add(dr1[0].ToString());
                }
                dr1.Close();
            }
        }
    }

       protected void Button1_Click(object sender, EventArgs e)
    {
               cls.cls_DDL_DM();
                cls.cmd = new SqlCommand("insert into pay_premium values('" + DropDownList1.Text + "','" + txtPolicyId.Text + "','" + txtPremiumAmount.Text + "','" + txtCardName.Text + "','" + txtCardNumber.Text + "','" + txtPinNumber.Text + "','" + txtTransferTo.Text + "')", cls.con);
                                cls.cmd.ExecuteNonQuery();
                cls.con.Close();
                MessageBox.Show("Record Added");
               }
    protected void Button2_Click(object sender, EventArgs e)
    {
                cls.cls_DDL_DM();
                cls.cmd = new SqlCommand("insert into pay_premium values(@cus_id,@policy_id,@premium_amount,@card_name,@card_no,@pin_no,@transfer_TO)",cls.con);
             cls.cmd.Parameters.AddWithValue("@cus_id",DropDownList1.Text);
             cls.cmd.Parameters.AddWithValue("@policy_id",txtPolicyId.Text);
             cls.cmd.Parameters.AddWithValue("@premium_amount",txtPremiumAmount.Text);
             cls.cmd.Parameters.AddWithValue("@card_name",txtCardName.Text);
             cls.cmd.Parameters.AddWithValue("@card_no",txtCardNumber.Text);
             cls.cmd.Parameters.AddWithValue("@pin_no",txtPinNumber.Text);
             cls.cmd.Parameters.AddWithValue("@transfer_TO",txtTransferTo.Text);
                        cls.cmd.ExecuteNonQuery();
                cls.con.Close();
                MessageBox.Show("Record Added");             
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
        using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from policy_holder where cusid='" + DropDownList1.SelectedValue.ToString() + "'", con);
            dr2 = cmd.ExecuteReader();
            while (dr2.Read())
            {
                txtPolicyId.Text = dr2[11].ToString();
                  txtPremiumAmount.Text = dr2[1].ToString();
            }
            dr2.Close();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from pay_premium where card_no='"+txtCardNumber.Text+"'",con);
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
            SqlCommand cmd = new SqlCommand("select * from pay_premium where card_no=@card_no", con);
            cmd.Parameters.AddWithValue("@card_no", txtCardNumber.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}
