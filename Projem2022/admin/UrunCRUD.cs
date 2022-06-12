using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Projem2022.admin
{
    public class UrunCRUD
    {

        Db db = new Db();

        public bool kayit(Urun urun)
        {
            bool bilgi = true;
            db.ac();
            SqlCommand komut = new SqlCommand("insert into URUNLER (U_Barkod,U_Kategori,U_Ad,U_Fiyat,U_Kdv,U_Stok_kod,U_Stok_adet,U_Stok_tur,U_Resim) values (@a,@b,@c,@d,@e,@f,@g,@h,@i)", db.baglanti);
            komut.Parameters.AddWithValue("@a", urun.Bkod);
            komut.Parameters.AddWithValue("@b", urun.Kat);
            komut.Parameters.AddWithValue("@c", urun.Ad);
            komut.Parameters.AddWithValue("@d", urun.Fiyat);
            komut.Parameters.AddWithValue("@e", urun.Kdv);
            komut.Parameters.AddWithValue("@f", urun.Skod);
            komut.Parameters.AddWithValue("@g", urun.Sadet);
            komut.Parameters.AddWithValue("@h", urun.Stur);
            komut.Parameters.AddWithValue("@i", urun.Resim);

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
            SqlCommand komut = new SqlCommand("select * from URUNLER", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            db.kapat();
            return dt;

        }

        public DataTable urunliste()
        {
            DataTable dt = new DataTable();
            db.ac();

            SqlCommand komut = new SqlCommand("select * from URUNLER ", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }
        public bool urunsil(string barkod)
        {
            bool bilgi;

            db.ac();
            SqlCommand komut = new SqlCommand("delete from URUNLER where U_Barkod=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", barkod);
            int kayitsay = komut.ExecuteNonQuery();
            if (kayitsay == 0)
            {
                bilgi = false;
            }
            else
            {
                bilgi = true;
            }

            db.kapat();

            return bilgi;

        }
    }
}