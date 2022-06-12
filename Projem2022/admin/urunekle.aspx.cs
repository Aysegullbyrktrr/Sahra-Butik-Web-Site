using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022.admin
{
    public partial class urunekle : System.Web.UI.Page
    {
        string rad1,rad2;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                rad1 = RadioButton1.Text;
            }
            if (RadioButton2.Checked)
            {
                rad1 = RadioButton2.Text;
            }
            if (RadioButton3.Checked)
            {
                rad1 = RadioButton3.Text;
            }
            if (RadioButton4.Checked)
            {
                rad2 = RadioButton4.Text;
            }
            if (RadioButton5.Checked)
            {
                rad2 = RadioButton5.Text;
            }


            string urunresim = FileUpload1.FileName;
            string urunresimtarih = System.DateTime.Now.ToString("MMddyyyy_HHmmss");
            FileUpload1.SaveAs(Server.MapPath("urunresim/" + urunresimtarih + "_" + urunresim));


            Urun yurun = new Urun();
            UrunCRUD uruncrud = new UrunCRUD();
            yurun.Kat = DropDownList1.Text;
            yurun.Ad = TextBox1.Text;
            yurun.Fiyat = Convert.ToInt32(TextBox2.Text);
            yurun.Bkod = TextBox3.Text;
            yurun.Kdv = rad1;
            yurun.Skod = TextBox4.Text;
            yurun.Sadet = Convert.ToInt32(TextBox6.Text);
            yurun.Stur = rad2;
            yurun.Resim = ("urunresim/" + FileUpload1.FileName);
            bool cevap = uruncrud.kayit(yurun);
            if (cevap == true)
            {
                kayitbasarili.Visible = true;
            }
            else
            {
                kayithatali.Visible = true;

            }

        }


    }
}