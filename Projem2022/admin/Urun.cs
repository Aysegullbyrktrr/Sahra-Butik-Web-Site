using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projem2022.admin
{
    public class Urun
    {
        string kat, ad, kdv, skod, bkod, stur, resim;
        float sadet, fiyat;

        public string Kat { get => kat; set => kat = value; }
        public string Ad { get => ad; set => ad = value; }
        public string Kdv { get => kdv; set => kdv = value; }
        public string Skod { get => skod; set => skod = value; }
        public string Bkod { get => bkod; set => bkod = value; }
        public string Stur { get => stur; set => stur = value; }
        public string Resim { get => resim; set => resim = value; }
        public float Sadet { get => sadet; set => sadet = value; }
        public float Fiyat { get => fiyat; set => fiyat = value; }
    }
}