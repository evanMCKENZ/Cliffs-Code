using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class RoughingMillHacienda : System.Web.UI.Page
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

        protected void Touchscreen_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Touchscreen";
            this.Border((ImageButton)sender, null);

        }

        protected void L1DEV_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "HMTC-L1DEV-TR";
            this.Border(L1DEVA, L1DEVB);

        }

        protected void ITComputer_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "ITComputer";
            this.Border((ImageButton)sender, null);

        }

        protected void EM02_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "HMTC-EM02";
            this.Border((ImageButton)sender, null);

        }

        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            Touchscreen.BorderStyle = BorderStyle.None;
            L1DEVA.BorderStyle = BorderStyle.None;
            L1DEVB.BorderStyle = BorderStyle.None;
            ITComputer.BorderStyle = BorderStyle.None;
            EM02.BorderStyle = BorderStyle.None;

            Border1.BorderStyle = BorderStyle.Solid;
            if (Border2 != null)
            {
                Border2.BorderStyle = BorderStyle.Solid;
            }
        }
    }
}