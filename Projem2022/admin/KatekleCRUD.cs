using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Projem2022.admin
{
    public class KatekleCRUD
    {
        Db db = new Db();

        public bool kategoriekle(Katekle kategori)
        {
            bool sonuc = true;
            db.ac();

            SqlCommand komut = new SqlCommand("insert into KATEGORİLER values (@1,@2,@3,@4)", db.baglanti);

            komut.Parameters.AddWithValue("@1", kategori.Katno);
            komut.Parameters.AddWithValue("@2", kategori.Katad);
            komut.Parameters.AddWithValue("@3", kategori.Resim);
            komut.Parameters.AddWithValue("@4", kategori.Katetiket);
            int durum = Convert.ToInt16(komut.ExecuteNonQuery());

            if (durum == 0)
            {
                sonuc = false;
            }

            db.kapat();

            return sonuc;
        }
    }
}