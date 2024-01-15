using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022
{
    public partial class musterikayıt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Random rnddkod = new Random();
            int dkod = rnddkod.Next(100000, 999999);

            Musteri yenimusteri = new Musteri();
            MusteriCRUD yenimusteriCRUD = new MusteriCRUD();

            yenimusteri.Mail = TextBox6.Text;
            yenimusteri.Tc = TextBox1.Text;
            yenimusteri.Kadi = TextBox2.Text;
            yenimusteri.Ad = TextBox3.Text;
            yenimusteri.Soyad = TextBox4.Text;
            yenimusteri.Sifre = TextBox5.Text;
            yenimusteri.Dkod = dkod.ToString();
            yenimusteri.Durum = 0;

            bool cevap = yenimusteriCRUD.kayit(yenimusteri);

            if (cevap == true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "kayitbasarili", "kayitbasarili()", true);
                Button2.Visible = true;
                basarili.Visible = true;

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "kayitbasarisiz", "kayitbasarisiz()", true);
            }

            string to = TextBox6.Text; //kime mail gidecek
            string from = "aysegullbyrktrr61@outlook.com"; //bizim mail adreismiz

            MailMessage message = new MailMessage(from, to);

            string mailbody = "Sayın " + TextBox3.Text + " " + TextBox4.Text + " Sahra Butik'e Hoş Geldiniz! Kaydınızı tamamlamak için doğrulama kodunuz: " + dkod;
            message.Subject = "Sayın @" + TextBox2.Text + " kullanıcı adlı yeni üyemiz. Sahra Butik Doğrulama Mailiniz";
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient(" smtp-mail.outlook.com", 587); //hotmail smtp
            System.Net.NetworkCredential basicCredential = new
            System.Net.NetworkCredential("aysegullbyrktrr61@outlook.com", "Ab210819"); //gonderen mail adresi şifresi 
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential;

            try
            {
                client.Send(message);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("musteridogrulama.aspx?mail=" + TextBox6.Text);
        }
    }
}
