using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cls_DDL_DML
/// </summary>
public class cls_DDL_DML
{

    public SqlConnection con;
    public SqlCommand cmdTrans;
   public SqlCommand cmd;    
    public SqlDataReader dr;
    SqlDataAdapter ada;
    public DataSet ds;
    private string result=null;
    public cls_DDL_DML()
    {
    }

	public void cls_DDL_DM()
	{
       con  = new SqlConnection("data source=GOLD-PC\\SQLEXPRESS;integrated security=true;initial catalog=creditcard;");
        //  if (con.State == ConnectionState.Closed)
        //{
            con.Open();            
        //}
        //SqlTransaction trans = con.BeginTransaction(IsolationLevel.ReadCommitted);
        //cmdTrans.Transaction = trans;
	}

    public string bizCommand(string sqlQuery)
    {        
       
        
        SqlCommand cmd = new SqlCommand(sqlQuery, con);
        cmd.ExecuteNonQuery();
        return result;
    }
    
    public void bizRead(string sqlQuery)
    {
       

        cmd = new SqlCommand(sqlQuery, con);
        dr = cmd.ExecuteReader();        
    }

    public void bizAdapter(string sqlQuery, string tableName)
    {
        ds = new DataSet();
        
        ada = new SqlDataAdapter(sqlQuery,con);
        ada.Fill(ds,tableName);
    }

    
}
