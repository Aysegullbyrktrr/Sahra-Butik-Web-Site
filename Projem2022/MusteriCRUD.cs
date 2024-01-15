using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Projem2022
{
    public class MusteriCRUD
    {
        Db db = new Db();
        public bool kayit(Musteri musteri)
        {
            bool bilgi = true;
            db.ac();

            SqlCommand komut = new SqlCommand("insert into MUSTERILER" + "(MTc, MKadi, MAdi, MSoyadi, MSfr, MMail, DKod, Onay)" +
            "values(@a, @b, @c, @d , @e, @f, @g, @h)", db.baglanti);

            komut.Parameters.AddWithValue("@a", musteri.Tc);
            komut.Parameters.AddWithValue("@b", musteri.Kadi);
            komut.Parameters.AddWithValue("@c", musteri.Ad);
            komut.Parameters.AddWithValue("@d", musteri.Soyad);
            komut.Parameters.AddWithValue("@e", musteri.Sifre);
            komut.Parameters.AddWithValue("@f", musteri.Mail);
            komut.Parameters.AddWithValue("@g", musteri.Dkod);
            komut.Parameters.AddWithValue("@h", musteri.Durum);

            int sonuc = komut.ExecuteNonQuery();
            if (sonuc == 0)
            {
                bilgi = false;
            }
            db.kapat();
            return bilgi;
        }
        public DataTable liste()
        {
            DataTable dt = new DataTable();
            //veritabanından istenen kritelere uyan kayıtlar çekilip, datatable içerisine aktarılacak
            db.ac();
            SqlCommand komut = new SqlCommand("select * from MUSTERILER", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public bool musterimi(string mmail, string msfr, string onay)
        {
            bool sonuc;
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from MUSTERILER where MMail=@a and MSfr=@b and Onay=1", db.baglanti);
            komut.Parameters.AddWithValue("@a", mmail);
            komut.Parameters.AddWithValue("@b", msfr);

            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                sonuc = false;
            }
            else
            {
                sonuc = true;
            }
            db.kapat();
            return sonuc;
        }

        public DataTable müsteeridkodliste()
        {
            DataTable dt = new DataTable();
            
            db.ac();
            SqlCommand komut = new SqlCommand("select * from MUSTERILER", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }
        public bool dogrulandi(string mail, string kod)
        {
            bool cevap = true;
            db.ac();
            SqlCommand komut = new SqlCommand("update MUSTERILER set Onay=1 where MMail=@a and DKod=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", mail);
            komut.Parameters.AddWithValue("@b", kod);

            int kayitsay = komut.ExecuteNonQuery();
            if (kayitsay == 0)
            {
                cevap = false;
            }
            else
            {
                cevap = true;
            }
            db.kapat();

            return cevap;

        }

        public DataTable dogrulanmamis(string mmail)
        {
            DataTable dt = new DataTable();
            
            db.ac();
            SqlCommand komut = new SqlCommand("select * from MUSTERILER where MMail=@a and Onay=0", db.baglanti);
            komut.Parameters.AddWithValue("@a", mmail);


            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public bool onaylimi(string mail, string kod)
        {
            bool cevap = true;
            db.ac();
            SqlCommand komut = new SqlCommand("update MUSTERILER set Onay=1 where MMail=@a and DKod=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", mail);
            komut.Parameters.AddWithValue("@b", kod);

            int kayitsay = komut.ExecuteNonQuery();
            if (kayitsay == 0)
            {
                cevap = false;
            }
            else
            {
                cevap = true;
            }
            db.kapat();

            return cevap;

        }
        //public bool onaylimi(string mmail, string kod)
        //{
        //    bool sonuc;
        //    DataTable dt = new DataTable();
        //    db.ac();
        //    SqlCommand komut = new SqlCommand("select * from MUSTERILER where MMail=@a and DKod=@b", db.baglanti);
        //    komut.Parameters.AddWithValue("@a", mmail);
        //    komut.Parameters.AddWithValue("@b", kod);

        //    SqlDataAdapter adp = new SqlDataAdapter(komut);
        //    adp.Fill(dt);
        //    if (dt.Rows.Count == 0)
        //    {
        //        sonuc = false;
        //    }
        //    else
        //    {
        //        sonuc = true;
        //    }
        //    db.kapat();
        //    return sonuc;
        //}
    }
}