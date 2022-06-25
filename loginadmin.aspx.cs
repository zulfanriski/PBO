using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace projek_beta
{
    public partial class loginadmin : System.Web.UI.Page
    {
        protected void btnloginadmin(object sender, EventArgs e)
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                string uid = Username.Text;
                string pass = sandi.Text;
                con.Open();
                string qry = "select * from loginadmin where username='" + uid + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Response.Redirect("MenuAdmin.aspx");
                }
                else
                {
                    Label1.Text = "Your username and password is incorrect";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
