using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Projem2022.admin
{
    public class UyeCRUD
    {
        Db db = new Db();
        public bool ekle(Uye uye)
        {
            bool sonuc = true;
            db.ac();
            SqlCommand komut = new SqlCommand("insert into UYELER values(@1,@2,@3,@4,@5,@6)", db.baglanti);

            komut.Parameters.AddWithValue("@1", uye.Ad);
            komut.Parameters.AddWithValue("@2", uye.Soyad);
            komut.Parameters.AddWithValue("@3", uye.Tel);
            komut.Parameters.AddWithValue("@4", uye.Adres);
            komut.Parameters.AddWithValue("@6", uye.Email);
            komut.Parameters.AddWithValue("@5", 0);
            int durum = Convert.ToInt16(komut.ExecuteNonQuery());
            if (durum == 0)
            {
                sonuc = false;
            }
            db.kapat();
            return sonuc;
        }

       
        //TÜM ÜYELERİ LİSTELER
        public DataTable liste()
        {
            DataTable dt = new DataTable();
            //veritabanından istenen kritelere uyan kayıtlar çekilip, datatable içerisine aktarılacak
            db.ac();
            SqlCommand komut = new SqlCommand("select * from UYELER", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            db.kapat();
            return dt;

        }
        public bool mailonay(string pmail)
        {
            bool sonuc = true;
            db.ac();
            SqlCommand komut = new SqlCommand("select count(*) from UYELER where Email=@1", db.baglanti);

            komut.Parameters.AddWithValue("@1", pmail);

            int kytsayi = Convert.ToInt16(komut.ExecuteScalar()); 

            if (kytsayi == 0)
            {
                sonuc = false;
            }

            db.kapat();

            return sonuc;
        }
        //MAIL ADRESLİ ÜYEYİ SİLER
        public bool uyesil(string gmail)
        {
            bool cevap;
            db.ac();
            SqlCommand komut = new SqlCommand("delete from UYELER where Email=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gmail);
            int kayitsay = komut.ExecuteNonQuery();
            if (kayitsay == 0)
            {
                cevap = false;
            }
            else
            { cevap = true; }

            db.kapat();
            return cevap;

        }
        //MAIL ADRESLİ KİŞİNİN BİLGİLERİNİ LİSTELER
        public Uye uyegoster(string gmail)
        {
            Uye uyem = new Uye();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from UYELER where Email=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gmail);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            uyem.Ad = dt.Rows[0][0].ToString();
            uyem.Soyad=dt.Rows[0][1].ToString();
            uyem.Tel=dt.Rows[0][2].ToString();
            uyem.Adres=dt.Rows[0][3].ToString();
            uyem.Email=dt.Rows[0][5].ToString();

            db.kapat();
            return uyem;
        }
        //MAIL ADRESLİ KİŞİNİN BİLGİLERİNİ GÜNCELLEME
        public bool uyeguncelleme(Uye guye)
        {
            bool cevap = true;
            db.ac();
            SqlCommand komut = new SqlCommand("update UYELER set Ad=@a,Syd=@b,Tel=@c,Adres=@e where Email=@f", db.baglanti);
            komut.Parameters.AddWithValue("@a", guye.Ad);
            komut.Parameters.AddWithValue("@b", guye.Soyad);
            komut.Parameters.AddWithValue("@c", guye.Tel);
            komut.Parameters.AddWithValue("@e", guye.Adres);
            komut.Parameters.AddWithValue("@f", guye.Email);
            int kayitsay = komut.ExecuteNonQuery();
            if (kayitsay == 0)
            {
                cevap = false;
            }
            else
            { cevap = true; }

            db.kapat();

            return cevap;
        }
        //ADMIN GİRİŞ KONTROL
        public bool adminmi(string gkadi, string gsfr)
        {
            bool sonuc = false;
            db.ac();
            DataTable dt = new DataTable();

            SqlCommand komut = new SqlCommand("select * from ADMIN where Kadi=@a and Sfr=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", gkadi);
            komut.Parameters.AddWithValue("@b", gsfr);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            if (dt.Rows.Count == 0) //kayıt bulunamadıysa
            {
                sonuc = false;
            }
            else  //eğer böyle bir admin varsa
            {
                sonuc = true;
            }

            db.kapat();
            return sonuc;
        }
    }
}