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
        public Urun urungoster(string barkod)
        {   //BARKOD NOLU ÜRÜNLERİ LİSTELER

            Urun urunum = new Urun();

            db.ac();

            SqlCommand komut = new SqlCommand("select * from URUNLER  where U_Barkod=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", barkod);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            urunum.Bkod = dt.Rows[0][0].ToString();
            urunum.Kat = dt.Rows[0][1].ToString();
            urunum.Ad = dt.Rows[0][2].ToString();
            urunum.Fiyat = Convert.ToInt32(dt.Rows[0][3]);
            urunum.Kdv = Convert.ToString(dt.Rows[0][4].ToString());
            urunum.Skod = dt.Rows[0][5].ToString();
            urunum.Sadet = Convert.ToUInt32(dt.Rows[0][6].ToString());
            urunum.Stur = Convert.ToString(dt.Rows[0][7]);
            urunum.Resim = dt.Rows[0][8].ToString();

            urunum.Resim = dt.Rows[0][11].ToString();

            db.kapat();
            return urunum;
        }

        //BARKOD NOLU ÜRÜNLERİ GÜNCELLER
        public bool urunguncelleme(Urun gurun)
        {
            bool bilgi = true;

            db.ac();
            SqlCommand komut = new SqlCommand("update URUNLER set U_Kategori=@b,U_Ad=@c,U_Fiyat=@d,U_Kdv=@e,U_Stok_Kod=@f,U_Stok_Adet=@g,U_Stok_Tur=@h,U_Resim=@i where U_Barkod=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gurun.Bkod);
            komut.Parameters.AddWithValue("@b", gurun.Kat);
            komut.Parameters.AddWithValue("@c", gurun.Ad);
            komut.Parameters.AddWithValue("@d", gurun.Fiyat);
            komut.Parameters.AddWithValue("@e", gurun.Kdv);
            komut.Parameters.AddWithValue("@f", gurun.Skod);
            komut.Parameters.AddWithValue("@g", gurun.Sadet);
            komut.Parameters.AddWithValue("@h", gurun.Stur);
            komut.Parameters.AddWithValue("@i", gurun.Resim);

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