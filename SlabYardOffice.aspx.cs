using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class SlabYardOffice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging1(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void STSSUPER02_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "BHW-STSSUPER02";
            this.Border((ImageButton)sender, null);
        }

        protected void STSSUPER03_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "BHW-STSSUPER03";
            this.Border((ImageButton)sender, null);
        }

        protected void STSSUPER05_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "BHW-STSSUPER05";
            this.Border((ImageButton)sender, null);
        }

        protected void STSSUPER06_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "BHW-STSSUPER06";
            this.Border((ImageButton)sender, null);
        }

        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            STSSUPER02.BorderStyle = BorderStyle.None;
            STSSUPER03.BorderStyle = BorderStyle.None;
            STSSUPER05.BorderStyle = BorderStyle.None;
            STSSUPER06.BorderStyle = BorderStyle.None;


            Border1.BorderStyle = BorderStyle.Solid;
            if (Border2 != null)
            {
                Border2.BorderStyle = BorderStyle.Solid;
            }
        }
    }
}