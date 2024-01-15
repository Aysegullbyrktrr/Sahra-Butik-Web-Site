using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022.admin
{
    public partial class urunekle : System.Web.UI.Page
    {
        string rad1,rad2;
        
        string urunresimtarih = System.DateTime.Now.ToString("MMddyyyy_HHmmss");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string katresim = FileUpload2.FileName;
            Katekle katekle = new Katekle();
            KatekleCRUD katekleCRUD = new KatekleCRUD();
            katekle.Katno = Convert.ToInt16(TextBox5.Text);
            katekle.Katad = TextBox8.Text;
            katekle.Katetiket =TextBox7.Text ;
            katekle.Resim = "urunresim/" + urunresimtarih + "_" + katresim;
            FileUpload1.SaveAs(Server.MapPath("urunresim/" + urunresimtarih + "_" + katresim));
            bool cevap = katekleCRUD.kategoriekle(katekle);
            if (cevap == true)
            {
                kayitbasarili.Visible = false;
               
                y_kat_ekle.Visible = true;
            }
            else
            {
                kayithatali.Visible = true;
            }

            UrunCRUD urunkat = new UrunCRUD();
            DataTable katdt = urunkat.katliste();
            DropDownList1.DataValueField = "KategoriId";
            DropDownList1.DataTextField = "KategoriAdi";

            DropDownList1.DataSource = katdt;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("Lütfen seçim yapın", "0"));


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
            yurun.Resim = "urunresim/" + urunresimtarih + "_" + urunresim ;
            FileUpload1.SaveAs(Server.MapPath("urunresim/" + urunresimtarih + "_" + urunresim));
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