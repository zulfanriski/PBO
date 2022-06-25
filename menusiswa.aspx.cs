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
    public partial class menusiswa : System.Web.UI.Page
    {
        protected void bayar(object sender, EventArgs e)
        {
 
            
                string strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                string insert = "insert into transaksi (nama,kelas,nomerabsen,nominal,tanggalpembayaran) values ('" + Username.Text + "','" + kelas.Text + "','" + absen.Text + "','" + nominal.Text + "','" + Tanggal.Text + "')";
                SqlCommand cmd = new SqlCommand(insert, con);
                int m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    Label1.Text = "Pembayaran Berhasil";
                    Label1.ForeColor = System.Drawing.Color.Blue;
                }

                con.Close();
            
        }
    }
}