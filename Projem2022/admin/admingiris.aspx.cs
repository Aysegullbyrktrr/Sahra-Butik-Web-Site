using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022.admin
{
    public partial class admingiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cik = Request.QueryString["cikis"];
            if (cik=="1")
            {
                Session.Abandon();
                Session.RemoveAll();
                    
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UyeCRUD uyem = new UyeCRUD();
            bool cevap = uyem.adminmi(TextBox1.Text, TextBox2.Text);
            if (cevap)
            {
                Session["admin"] = "ok";
                Session["kuladi"] = TextBox1.Text;
                Response.Redirect("index.aspx");

            }
            else
            {
                Label2.Text = "Kullanıcı Adı yada Şifre hatalı...";
            }
        }
    }
}