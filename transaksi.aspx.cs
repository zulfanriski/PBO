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
    public partial class transaksi : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            string sql = "select nama as [Nama Siswa],kelas as [Kelas],nomerabsen as [Nomer Absen],nominal as [Nominal],tanggalpembayaran as [Tanggal Pembayaran] from transaksi ";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            GridView1.DataSource = reader;
            GridView1.DataBind();

            con.Close();
        }
    }
}