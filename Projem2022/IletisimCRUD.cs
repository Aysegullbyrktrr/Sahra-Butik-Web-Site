using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Projem2022
{
    public class IletisimCRUD
    {
        Db db = new Db();
        public bool mesaj(string message, Iletisim info)
        {
            db.ac();
            DataTable dt = new DataTable();
            string sorgu = "INSERT INTO ILETISIM (Ad,Soyad,Mail,Telefon) values (@AD,@SOYAD,@MAIL,@NUMBER)";
            SqlCommand komut = new SqlCommand(sorgu, db.baglanti);
            komut.Parameters.AddWithValue("@AD", info.Name);
            komut.Parameters.AddWithValue("@SOYAD", info.Surname);
            komut.Parameters.AddWithValue("@MAIL", info.Mail);
            komut.Parameters.AddWithValue("@NUMBER", info.Tel);
            db.kapat();
            return true;
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

    }
}