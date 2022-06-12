using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022.admin
{
    public partial class urun_s_gncl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string barkods = Request.QueryString["sil"];
            if (barkods != null)
            {
                UrunCRUD urun = new UrunCRUD();
                bool cevap =urun.urunsil(barkods);


                if (cevap == true)
                {
                    if (!IsPostBack)
                    {
                        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "silb_li", "$('#silb_li').modal();", true);

                    }

                }
                else if (cevap == false)
                {
                    if (!IsPostBack)
                    {
                        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "silb_siz", "$('#silb_siz').modal();", true);
                    }
                }




            }



        }
    }
}