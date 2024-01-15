using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Projem2022
{
    public class UrunCRUD
    {     
        Db db = new Db();

        public Urun urungoster(string gbarkod)
        {
            Urun urun = new Urun();
            db.ac();

            SqlCommand komut = new SqlCommand("select * from URUNLER where U_Barkod=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gbarkod);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                urun.Ubarkod = dt.Rows[0][0].ToString();
                urun.Urunkateid = dt.Rows[0][1].ToString();
                urun.Urunadi = dt.Rows[0][2].ToString();
                urun.Ufiyat = Convert.ToInt32(dt.Rows[0][3]);
                urun.Ukdv = dt.Rows[0][4].ToString();
                urun.Ustokid = dt.Rows[0][5].ToString();
                urun.Ustokadet = Convert.ToInt32(dt.Rows[0][6]);
                urun.Ustoktur = dt.Rows[0][7].ToString();
                urun.Uresim = dt.Rows[0][8].ToString();
            }
            db.kapat();
            return urun;
        }
        public DataTable liste()
        {
            DataTable dt = new DataTable();
            //veritabanından istenen kritelere uyan kayıtlar çekilip, datatable içerisine aktarılacak
            db.ac();
            SqlCommand komut = new SqlCommand("select * from  URUNLER", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }
        public DataTable kategoriyegoreliste(string gkategori)
        {
            
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select top(5) * from KATEGORİLER where KatEtiket=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gkategori);
           
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public DataTable etiketegoreliste(string gelenkategori)
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select * from URUNLER where U_Etiket=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gelenkategori);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }


        public DataTable yeniurunlerliste()
        {

            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select top(8) * from urunler", db.baglanti);
         

            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public DataTable urunadliste(string gad)
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select count(*) from URUNLER where  U_Ad=@a", db.baglanti);
         
            komut.Parameters.AddWithValue("@a", gad);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public DataTable elbiseliste() 
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select * from  URUNLER where U_Etiket ='Elbise'", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }
        public DataTable tunikliste()
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select * from  URUNLER where U_Etiket ='Tunik'", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public DataTable dısgiyimliste()
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select * from  URUNLER where U_Etiket ='Dış Giyim'", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }
        //public Urun urundetaygoster(string gbarkod)
        //{
        //    Urun urun = new Urun();
        //    db.ac();

        //    SqlCommand komut = new SqlCommand("select * from URUNLER where U_Barkod=@a", db.baglanti);
        //    komut.Parameters.AddWithValue("@a", gbarkod);

        //    DataTable dt = new DataTable();
        //    SqlDataAdapter adp = new SqlDataAdapter(komut);
        //    adp.Fill(dt);
        //    urun.Ubarkod = dt.Rows[0][0].ToString();
        //    urun.Urunkateid = dt.Rows[0][1].ToString();
        //    urun.Urunadi = dt.Rows[0][2].ToString();
        //    urun.Ufiyat = Convert.ToInt32(dt.Rows[0][3]);
        //    urun.Ukdv = dt.Rows[0][4].ToString();
        //    urun.Ustokid = dt.Rows[0][5].ToString();
        //    urun.Ustokadet = Convert.ToInt32(dt.Rows[0][6]);
        //    urun.Ustoktur = dt.Rows[0][7].ToString();
        //    urun.Uresim = dt.Rows[0][8].ToString();


        //    db.kapat();
        //    return urun;
        //}

        public Urun urundetaygoster(string gbarkod)
        {
            Urun urun = new Urun();
            db.ac();

            SqlCommand komut = new SqlCommand("select * from URUNLER where U_Barkod=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gbarkod);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                urun.Ubarkod = dr[0].ToString();
                urun.Urunkateid = dr[1].ToString();
                urun.Urunadi = dr[2].ToString();
                urun.Ufiyat = Convert.ToInt32(dr[3]);
                urun.Ukdv = dr[4].ToString();
                urun.Ustokid = dr[5].ToString();
                urun.Ustokadet =Convert.ToInt32(dr[6]);
                urun.Ustoktur = dr[7].ToString();
                urun.Uresim = dr[8].ToString();
            }

            db.kapat();
            return urun;
        }
    }
}