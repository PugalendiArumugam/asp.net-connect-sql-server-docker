using System;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Runtime.CompilerServices;

namespace loginpage
{
  public class login : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      try
      {
        string SqlCS = ConfigurationManager.AppSettings["PMA"];
        SqlConnection conn = new SqlConnection(SqlCS);

        if (conn.State == ConnectionState.Open)
        {
          conn.Close();
        }
        conn.Open();


        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from user";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        //Gridview1.DataSource = dt;
        //Gridview1.DataBind();

      }
      catch (Exception ex)
      {
        string msg = ex.Message;
      }

    }

    public void Button2Clicked(object sender, EventArgs args)
    {
            

    }
  }
}

