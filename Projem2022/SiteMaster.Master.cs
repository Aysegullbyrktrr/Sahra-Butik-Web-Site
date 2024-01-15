using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        HttpCookie cerez = new HttpCookie("girisbilgi");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["girisbilgi"] != null)
                {
                    cerez = Request.Cookies["girisbilgi"];
                    TextBox1.Text = cerez["email"].ToString();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MusteriCRUD musteri = new MusteriCRUD();
            DataTable dtkod = new DataTable();
            dtkod = musteri.müsteeridkodliste();

            bool cevap = musteri.musterimi(TextBox1.Text, TextBox2.Text, Convert.ToString(dtkod.Rows[0][7]));

            if (cevap)
            {
                Session["uye"] = TextBox1.Text;

                if (CheckBox1.Checked)
                {
                    cerez["email"] = TextBox1.Text;

                    cerez.Expires = DateTime.Now.AddMonths(6);
                    Response.Cookies.Add(cerez);
                }
            }
            else
            {
                //masterpage de çalışması için önüne page. eklenmesi gerek
                Page.ClientScript.RegisterStartupScript(this.GetType(), "basarisizgiris", "basarisizgiris()", true);
            }

        }

       
        protected void Button3_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("default.aspx");
        }

        
    }
}