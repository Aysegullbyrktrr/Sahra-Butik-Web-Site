using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projem2022
{
    public class Musteri
    {
        string tc, kadi, ad, soyad, sifre, mail;
        string dkod;
        int durum;

        public string Tc { get => tc; set => tc = value; }
        public string Kadi { get => kadi; set => kadi = value; }
        public string Ad { get => ad; set => ad = value; }
        public string Soyad { get => soyad; set => soyad = value; }
        public string Sifre { get => sifre; set => sifre = value; }
        public string Mail { get => mail; set => mail = value; }
        public string Dkod { get => dkod; set => dkod = value; }
        public int Durum { get => durum; set => durum = value; }
    }
}