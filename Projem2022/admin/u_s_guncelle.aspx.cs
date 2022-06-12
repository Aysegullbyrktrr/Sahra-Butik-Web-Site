using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022.admin
{
    public partial class u_s_guncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Request.QueryString["sil"];
            if (email != null)
            {
                UyeCRUD uyem = new UyeCRUD();
                bool cevap = uyem.uyesil(email);
                

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