using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022
{
    public partial class sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["prmurundetay"] != null)
            {
                string ubarkodprm = Request.QueryString["prmurundetay"];
                SepetCRUD sepettekiurun = new SepetCRUD();
                sepettekiurun.sepeteekle(ubarkodprm, Session["uye"].ToString());
            }

          

        }
    }
}