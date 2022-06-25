using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace projek_beta
{
    public partial class editdata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            string sql = "select id as [ID Siswa],nama as [Nama Siswa],nis as [NIS],kelas as [Kelas],alamat as [Alamat] from siswa ";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            GridView1.DataSource = reader;
            GridView1.DataBind();

            con.Close();
        }
        protected void update(object sender, EventArgs e)
        {
            string conn = "";
            conn = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlConnection objsqlconn = new SqlConnection(conn);
            objsqlconn.Open();
            SqlCommand objcmd = new SqlCommand("Update siswa set nis='" + nis.Text + "',kelas='" + kelas.Text + "',alamat='" + alamat.Text + "' where nama='" + Username.Text + "'", objsqlconn);
            int m = objcmd.ExecuteNonQuery();
            if (m != 0)
            {

                Response.Redirect(Request.Url.AbsoluteUri);

            }
        }
        protected void delet(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            string id = Tanggal.Text;
            con.Open();
            string delete = "delete from siswa where id='" + id + "'";
            SqlCommand cmd = new SqlCommand(delete, con);
            int m = cmd.ExecuteNonQuery();
            if (m != 0)
            {

                Response.Redirect(Request.Url.AbsoluteUri);

            }
        }
        protected void add(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            string insert = "insert into siswa (nama,nis,kelas,alamat) values ('" + Username.Text + "','" + Convert.ToInt32(nis.Text) + "','" + kelas.Text + "','" + alamat.Text + "')";
            SqlCommand cmd = new SqlCommand(insert, con);
            int m = cmd.ExecuteNonQuery();
            if (m != 0)
            {
                
                Response.Redirect(Request.Url.AbsoluteUri);
             
            }

            con.Close();
        }
    }
}