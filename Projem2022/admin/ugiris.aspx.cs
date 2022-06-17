using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022.admin
{
    public partial class ugiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void temizle()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Uye uye = new Uye();
            UyeCRUD uyem = new UyeCRUD();

            bool cevap = uyem.mailonay(TextBox4.Text);
            if (cevap== false) //mail kayıtlı değilse
            {


                uye.Ad = TextBox1.Text;
                uye.Soyad = TextBox2.Text;
                uye.Tel = TextBox3.Text;
                uye.Email = TextBox4.Text;
                uye.Sfr = Convert.ToInt16(TextBox5.Text);
                uye.Adres = TextBox6.Text;

                bool cevap1 = uyem.ekle(uye);

                if (cevap == true)
                {     
                    mailhata.Visible = false;
                    basarili.Visible = true;
                    
                    temizle();
                }
                else
                {
                    mailhata.Visible = false;
                    hatali.Visible = true;
                    
                    temizle();
                }

            }
            else
            {
                mailhata.Visible = true;
            }

        }
    }
}