using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projem2022
{
    public class Iletisim
    {
        string name, surname, mail;
        int tel;

        public string Name { get => name; set => name = value; }
        public string Surname { get => surname; set => surname = value; }
        public string Mail { get => mail; set => mail = value; }
        public int Tel { get => tel; set => tel = value; }
    }
}