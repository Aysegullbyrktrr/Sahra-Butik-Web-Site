using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projem2022.admin
{
    public class Katekle
    {
        string katad,resim,katetiket;
        int katno;

        public string Katad { get => katad; set => katad = value; }
        public int Katno { get => katno; set => katno = value; }
        public string Resim { get => resim; set => resim = value; }
        public string Katetiket { get => katetiket; set => katetiket = value; }
    }
}