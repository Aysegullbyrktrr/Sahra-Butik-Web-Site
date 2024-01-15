using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projem2022
{
    public class Urun
    {
        string urunkateid, urunadi, ukdv, ustokid, ubarkod, ustoktur, uresim;
        int ufiyat, ustokadet;

        public string Urunkateid { get => urunkateid; set => urunkateid = value; }
        public string Urunadi { get => urunadi; set => urunadi = value; }
        public string Ukdv { get => ukdv; set => ukdv = value; }
        public string Ustokid { get => ustokid; set => ustokid = value; }
        public string Ubarkod { get => ubarkod; set => ubarkod = value; }
        public string Ustoktur { get => ustoktur; set => ustoktur = value; }
        public string Uresim { get => uresim; set => uresim = value; }
        public int Ufiyat { get => ufiyat; set => ufiyat = value; }
        public int Ustokadet { get => ustokadet; set => ustokadet = value; }
    }
}