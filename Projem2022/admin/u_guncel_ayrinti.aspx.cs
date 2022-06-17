using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022.admin
{
    public partial class u_guncel_ayrinti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string guncel = Request.QueryString["guncelle"];
                if (!string.IsNullOrEmpty(guncel))
                {
                    UyeCRUD islem = new UyeCRUD();
                    Uye uyem = islem.uyegoster(guncel);
                    TextBox1.Text = uyem.Ad;
                    TextBox2.Text = uyem.Soyad;
                    TextBox3.Text = uyem.Tel;
                    TextBox5.Text = uyem.Adres;
                    TextBox4.Text = uyem.Email;
                }
                else
                {
                    Response.Redirect("u_s_guncelle.aspx");
                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            UyeCRUD islem = new UyeCRUD();
            Uye uyem = new Uye();
            uyem.Ad = TextBox1.Text;
            uyem.Soyad = TextBox2.Text;
            uyem.Tel = TextBox3.Text;
            uyem.Email = TextBox4.Text;
            uyem.Adres = TextBox5.Text;

            bool cevap = islem.uyeguncelleme(uyem);
            if (cevap == true)
            {
                msj.Visible = true;
            }

        }
    }

   
}