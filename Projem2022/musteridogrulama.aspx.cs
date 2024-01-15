using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022
{
    public partial class musteridogrulama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            MusteriCRUD onaylimi = new MusteriCRUD();
            Musteri musteri = new Musteri();
            DataTable dt = new DataTable();

            dt = onaylimi.dogrulanmamis(TextBox1.Text);
           
            if (TextBox2.Text == Convert.ToString(dt.Rows[0][6]))
            {
                onaylimi.dogrulandi(TextBox1.Text, TextBox2.Text);
            }
        }
    }
}