using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

/// <summary>
/// Summary description for Dal
/// </summary>

    public  static class Dal
    {
       

        public static OleDbConnection MakeConnection(string dbName)
        {
            OleDbConnection c = new OleDbConnection();
            string str = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + dbName);
            c.ConnectionString = str;
            c.Open();
            return c;
        }
        //===========================================
        public static DataTable SelectFromTableDT(string sql, string dbName)
        {  // excute sql select statement and return DataTable
            OleDbConnection c = MakeConnection(dbName);
            OleDbCommand cmd = new OleDbCommand(sql, c);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            c.Close();
            return dt;
        }

        //==========================================================
        public static void ChangeTable(string sql, string dbName)
        {
            // excute insert/delete/update sql statement
            OleDbConnection c = Dal.MakeConnection(dbName);
            OleDbCommand cmd = new OleDbCommand(sql, c);
            cmd.ExecuteNonQuery();
            c.Close();
        }
    }
