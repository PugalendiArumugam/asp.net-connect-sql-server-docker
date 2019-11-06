using System;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace loginpage
{

  public partial class login2 : System.Web.UI.Page
  {

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void Insert_Clicked(object sender, EventArgs args)
    {
      string SqlCS = ConfigurationManager.AppSettings["PMA"];
      SqlConnection conn = new SqlConnection(SqlCS);

      if (conn.State == ConnectionState.Open)
      {
        conn.Close();
      }
      conn.Open();



      SqlCommand cmd;
      cmd = conn.CreateCommand();
      cmd.CommandType = CommandType.Text;
      cmd.CommandText = "select max(id) from [user]";
      Int32 maxid = (Int32)cmd.ExecuteScalar();
      maxid += 1;
      cmd.Dispose();


      cmd = conn.CreateCommand();
      cmd.CommandType = CommandType.Text;
      cmd.CommandText = "insert into [user](id,firstname,username,email,password,mobile) " +
        "values('" + maxid + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" +TextBox5.Text+ "')";

      cmd.ExecuteNonQuery();
      cmd.Dispose();
      conn.Close();

    }

    public void Delete_Clicked(object sender, EventArgs args)
    {
      StringBuilder errorMessages = new StringBuilder();
      string SqlCS = ConfigurationManager.AppSettings["PMA"];
      SqlConnection conn = new SqlConnection(SqlCS);

      if (conn.State == ConnectionState.Open)
      {
        conn.Close();
      }
      conn.Open();

      try
      {
        SqlCommand cmd;
        cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from [user] where username ='"+TextBox2.Text+"'";

        Int32 deleted_count = (Int32)cmd.ExecuteNonQuery();
        cmd.Dispose();
        conn.Close();
      }
      catch (SqlException ex)
      {
        for (int i = 0; i < ex.Errors.Count; i++)
        {
          errorMessages.Append("Index #" + i + "\n" +
              "Message: " + ex.Errors[i].Message + "\n" +
              "LineNumber: " + ex.Errors[i].LineNumber + "\n" +
              "Source: " + ex.Errors[i].Source + "\n" +
              "Procedure: " + ex.Errors[i].Procedure + "\n");
        }
        msglabel.Text = errorMessages.ToString();
      }
    }


    public void Gridview_Clicked(object sender, EventArgs args)
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
        cmd.CommandText = "select * from [user]";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
      }
      catch (Exception ex)
      {
        string msg = ex.Message;
      }
    }
    }
  }
