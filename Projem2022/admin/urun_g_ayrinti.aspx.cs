using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projem2022.admin
{
    public partial class urun_g_ayrinti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!IsPostBack)
                {

                    string guncel = Request.QueryString["guncelle"];
                    if (!string.IsNullOrEmpty(guncel))
                    {
                        UrunCRUD islem = new UrunCRUD();
                        Urun urunum = islem.urungoster(guncel);
                        DataTable kdt = islem.katliste();
                        DropDownList1.DataTextField = "U_Kategori";
                        DropDownList1.DataSource = kdt;
                        DropDownList1.DataBind();

                        TextBox1.Text = urunum.Ad;
                        TextBox2.Text = Convert.ToInt32(urunum.Fiyat).ToString();
                        TextBox3.Text = urunum.Bkod;
                        TextBox4.Text = urunum.Skod;
                      
                        TextBox6.Text = Convert.ToInt32(urunum.Sadet).ToString(); ;
                        if (urunum.Kdv == "%1")
                        {
                            RadioButton1.Checked = true;
                        }
                        if (urunum.Kdv == "%10")
                        {
                            RadioButton2.Checked = true;
                        }
                        if (urunum.Kdv == "%18")
                        {
                            RadioButton3.Checked = true;
                        }
                        if (urunum.Stur == "Stok var")
                        {
                            RadioButton4.Checked = true;
                        }
                        if (urunum.Stur == "Stok yok")
                        {
                            RadioButton5.Checked = true;
                        }

                          Image1.ImageUrl = urunum.Resim;
                    }

                 

                }
                else
                {
                    Response.Redirect("urungncl.aspx");
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UrunCRUD islem = new UrunCRUD();
            Urun urunum = new Urun();
          
            urunum.Ad = TextBox1.Text;
            urunum.Fiyat = Convert.ToUInt16(TextBox2.Text);
            if (RadioButton1.Checked == true)
            {
                urunum.Kdv = RadioButton1.Text;
            }

            if (RadioButton2.Checked == true)
            {
               urunum.Kdv = RadioButton2.Text;
            }

            if (RadioButton3.Checked == true)
            {
                urunum.Kdv = RadioButton3.Text;
            }
            urunum.Bkod = TextBox3.Text;
            urunum.Skod = TextBox4.Text;
            urunum.Kat = DropDownList1.SelectedValue;

            urunum.Sadet = Convert.ToUInt16(TextBox6.Text);
            if (RadioButton4.Checked == true)
            {
               urunum.Stur = RadioButton4.Text;
            }
            if (RadioButton5.Checked == true)
            {
                urunum.Stur = RadioButton5.Text;
            }


            string urunresim = FileUpload1.FileName;
            string urunresimtarih = System.DateTime.Now.ToString("MMddyyyy_HHmmss");
            FileUpload1.SaveAs(Server.MapPath("urunresim/" + urunresimtarih + "_" + urunresim));
            urunum.Resim = "urunresim/" + urunresimtarih + "_" + urunresim;
           

            bool cevap = islem.urunguncelleme(urunum);
            if (cevap == true)
            {
                msj.Visible = true;
            }
        }
    }
}