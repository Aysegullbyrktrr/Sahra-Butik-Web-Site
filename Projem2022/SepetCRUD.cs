using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Projem2022
{
    public class SepetCRUD
    {
        Db db = new Db();

        public bool sepeteekle(string barkodprm, string mailprm)
        {
            bool sonuc = false;
            int cevap;

            db.ac();
            //ürün daha önceden eklenmiş mi
            SqlCommand komutara = new SqlCommand("select count(*) from SEPET where U_Barkod=@bk and MMail=@ml", db.baglanti);
            komutara.Parameters.AddWithValue("@ml", mailprm);
            komutara.Parameters.AddWithValue("@bk", barkodprm);

            int kaysay = Convert.ToInt16(komutara.ExecuteScalar());

            if (kaysay == 0)//hayır ise
            {
                SqlCommand komut = new SqlCommand("insert into SEPET values(@a, @b, @c, @d, @e)", db.baglanti);

                komut.Parameters.AddWithValue("@a", barkodprm);
                komut.Parameters.AddWithValue("@b", 1);
                komut.Parameters.AddWithValue("@c", mailprm);
                komut.Parameters.AddWithValue("@d", 0);
                komut.Parameters.AddWithValue("@e", System.DateTime.Now);


                cevap = komut.ExecuteNonQuery();
                if (cevap == 1)
                {
                    sonuc = true;
                }
            }
            else
            {
                SqlCommand adetarttir = new SqlCommand("update SEPET set U_Adet=U_Adet+1 where MMail=@a and U_Barkod=@b", db.baglanti);

                adetarttir.Parameters.AddWithValue("@a", mailprm);
                adetarttir.Parameters.AddWithValue("@b", barkodprm);

                cevap = adetarttir.ExecuteNonQuery();

                if (cevap == 1)
                {
                    sonuc = true;
                }
            }
            db.kapat();
            return sonuc;
        }

        public DataTable sepetgoster(string mailprm)
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from SEPET where Durum=0 and MMail=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mailprm);

            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }

        public int sepetadet(string mailprm)
        {
            int cesitadet;

            db.ac();
            SqlCommand komut = new SqlCommand("select count(*) from SEPET where Durum=0 and MMail=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mailprm);
            cesitadet = Convert.ToInt16(komut.ExecuteScalar());

            db.kapat();
            return cesitadet;
        }

        public DataTable sepettoplami(string mailprm)
        {
            DataTable dt = new DataTable();

            db.ac();

            SqlCommand komut = new SqlCommand("select sum(U_Fiyat*U_Adet) from SEPET,URUNLER  where SEPET.U_Barkod = URUNLER.U_Barkod and MMail = @a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mailprm);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            return dt;
        }

        public bool sepeturunsil(string barkod)
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