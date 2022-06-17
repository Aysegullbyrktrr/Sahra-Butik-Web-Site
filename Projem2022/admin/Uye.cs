using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projem2022.admin
{
    public class Uye
    {
        string ad, soyad, email,tel,adres;
        int sfr;

        public string Ad { get => ad; set => ad = value; }
        public string Soyad { get => soyad; set => soyad = value; }
        public string Email { get => email; set => email = value; }
        public int Sfr { get => sfr; set => sfr = value; }
        public string Tel { get => tel; set => tel = value; }
        public string Adres { get => adres; set => adres = value; }
    }
}