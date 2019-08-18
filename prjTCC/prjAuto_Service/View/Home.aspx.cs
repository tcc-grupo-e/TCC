using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjAuto_Service
{
    public partial class Home : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

            string falec = (Request.QueryString["var"]);
            if(falec == "muda")
            {
                //this.Controls.Add(new LiteralControl("<script>document.getElementById('fale1').click();</ script>"));
                this.Controls.Add(new LiteralControl("<script>alert('JOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOJOOU');</script>"));
                
            }
        }


    }
}