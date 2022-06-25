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
    public partial class Register : System.Web.UI.Page
    {
        protected void akun(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            string insert = "insert into loginsiswa (nama,nis,email,password) values ('" + Username.Text + "','" + Convert.ToInt32 (nis.Text) + "','" + email.Text + "','" + sandi.Text + "')";
            SqlCommand cmd = new SqlCommand(insert, con);
            int m = cmd.ExecuteNonQuery();
            if (m != 0)
            {
                Label1.Text = "Akun Berhasil Dibuat";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
           
            con.Close();
        }
    }
}