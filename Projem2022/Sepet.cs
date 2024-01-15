using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projem2022
{
    public class Sepet
    {
        string sepetid, ubarkod, uadet, mmail;
        bool durum;
        DateTime tarih;

        public string Sepetid { get => sepetid; set => sepetid = value; }
        public string Ubarkod { get => ubarkod; set => ubarkod = value; }
        public string Uadet { get => uadet; set => uadet = value; }
        public string Mmail { get => mmail; set => mmail = value; }
        public bool Durum { get => durum; set => durum = value; }
        public DateTime Tarih { get => tarih; set => tarih = value; }
    }
}