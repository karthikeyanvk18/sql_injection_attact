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
public partial class new_policy_holder : System.Web.UI.Page
{
    public SqlDataReader dr,dr1,dr2;
    cls_DDL_DML cls = new cls_DDL_DML();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select distinct policy_id from policy_holder", con);
                dr = cmd.ExecuteReader();
                drpPolicyId.Items.Clear();
                drpPolicyId.Items.Add("--select--");
                while (dr.Read())
                {

                    drpPolicyId.Items.Add(dr[0].ToString());
                }
                dr.Close();
                SqlCommand cmd1 = new SqlCommand("select distinct un from emp_details", con);
                dr1 = cmd1.ExecuteReader();
                drpIssuedBy.Items.Clear();
                drpIssuedBy.Items.Add("--select--");
                while (dr1.Read())
                {
                    drpIssuedBy.Items.Add(dr1[0].ToString());
                }
                dr.Close();
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        cls.cls_DDL_DM();
        cls.cmd = new SqlCommand("insert into policy_holder values('"+txtCustomerName.Text +"','"+txtAge.Text +"','"+txtFamilySize.Text +"','"+drpMedicalStatus.Text +"','"+txtContactNumber.Text +"','"+txtAddressForCommunication.Text +"','"+txtCity.Text +"','"+txtState.Text +"','"+txtPincode.Text +"','"+txtPermanentAddress.Text +"','"+txtEmailId.Text +"','"+drpPolicyId.Text +"','"+txtSumAssured.Text +"','"+txtPremiumAmount.Text +"','"+drpPolicyStatus.Text +"','"+drpIssuedBy.Text +"','"+txtNoOfPremiums.Text +"','"+TextBox1.Text+"')",cls.con);

        cls.cmd.ExecuteNonQuery();
        cls.con.Close();
        MessageBox.Show("new policy holder is Added");
            }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cls.cls_DDL_DM();
        cls.cmd = new SqlCommand("insert into policy_holder(cus_name,age,family_size,medical_status,ph_no,address,city,state,pincode,permenant_address,email,policy_id,sum_assured,no_of_premium_amount,policy_status,issued_by,noofpremium,cusid) values(@cus_name,@age,@family_size,@medical_status,@ph_no,@address,@city,@state,@pincode,@permenant_address,@email,@policy_id,@sum_assured,@no_of_premium_amount,@policy_status,@issued_by,@noofpremium,@cusid)", cls.con);
        cls.cmd.Parameters.AddWithValue("@cus_name",txtCustomerName.Text);
        cls.cmd.Parameters.AddWithValue("@age",txtAge.Text);
        cls.cmd.Parameters.AddWithValue("@family_size",txtFamilySize.Text);
            cls.cmd.Parameters.AddWithValue("@medical_status",drpMedicalStatus.Text);
                cls.cmd.Parameters.AddWithValue("@ph_no",txtContactNumber.Text);
                    cls.cmd.Parameters.AddWithValue("@address",txtAddressForCommunication.Text);
                        cls.cmd.Parameters.AddWithValue("@city",txtCity.Text);   
       
                            cls.cmd.Parameters.AddWithValue("@state",txtState.Text);
                                cls.cmd.Parameters.AddWithValue("@pincode",txtPincode.Text);
                                    cls.cmd.Parameters.AddWithValue("@permenant_address",txtPermanentAddress.Text);
cls.cmd.Parameters.AddWithValue("@email",txtEmailId.Text);
    cls.cmd.Parameters.AddWithValue("@policy_id",drpPolicyId.Text);
        cls.cmd.Parameters.AddWithValue("@sum_assured",txtSumAssured.Text);
            cls.cmd.Parameters.AddWithValue("@no_of_premium_amount",txtPremiumAmount.Text);
                cls.cmd.Parameters.AddWithValue("@policy_status",drpPolicyStatus.Text);
                cls.cmd.Parameters.AddWithValue("@issued_by", drpIssuedBy.Text);
                cls.cmd.Parameters.AddWithValue("@noofpremium", txtNoOfPremiums.Text);
                cls.cmd.Parameters.AddWithValue("@cusid", TextBox1.Text);
                cls.cmd.ExecuteNonQuery();
                cls.con.Close();
                MessageBox.Show("new policy holder is Added");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from policy_holder where cusid='" + TextBox1.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
         }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;

        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("select max(cusid) from policy_holder", con);
            //   dr2 = cmd.ExecuteReader();
            //data.DBReaderOpen("select max(uid) from userinfo");

            int x = 1, y;
            y = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
            TextBox1.Text = y.ToString();

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from policy_holder where cusid=@cusid",con);
            cmd.Parameters.AddWithValue("@cusid",TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}
