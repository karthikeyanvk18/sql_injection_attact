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

public partial class payment_details : System.Web.UI.Page
{
    cls_DDL_DML cls = new cls_DDL_DML();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cls.bizAdapter("select ccd.CARD_NUMBER,ccd.PIN_NO,transactions.CARD_NO,transactions.DATE_OF_TRANSCATION,transactions.TRANCATION_AMOUNT,transactions.TRANSFERRED_TO from ccd inner join transactions on ccd.CARD_NUMBER=transactions.CARD_NO and transactions.CARD_NO='"+txtCardNo.Text +"' and ccd.PIN_NO='"+txtPinNo.Text +"'", "transactions");
        gvPaymentDetails.DataSource = cls.ds;
        gvPaymentDetails.DataBind();
        gvPaymentDetails.Caption = "Transaction Details";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            cls.bizAdapter("spSelTransDetails @Card_No='" + txtCardNo.Text + "',@Pin_No='" + txtPinNo.Text + "'", "transactions");
            gvPaymentDetails.DataSource = cls.ds;
            gvPaymentDetails.DataBind();
            gvPaymentDetails.Caption = "Transaction Details";
        }
        catch
        {
        }
    }
}
