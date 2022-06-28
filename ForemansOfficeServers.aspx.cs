using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class Servers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void IBACam1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "BHW-HSMIBA-CAM1";
            this.Border((ImageButton)sender, null);
        }
        protected void IBACam2_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "BHW-HSMIBA-CAM2";
            this.Border((ImageButton)sender, null);
        }
        protected void IBACam3_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "BHW-HSMIBA-CAM3";
            this.Border((ImageButton)sender, null);
        }
        protected void Video_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Video Rack";
            this.Border((ImageButton)sender, null);
        }
        protected void Switches_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Switches Rack";
            this.Border((ImageButton)sender, null);
        }

        /**
* This function handles the borders put around a clicked computer.
* Previous1 is the first computer that needs its border removed
* Previous2 is the second, it could be null if there is not a second screen on the computer clicked
*/
        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            HOS01.BorderStyle = BorderStyle.None;
            HOS8.BorderStyle = BorderStyle.None;
            HOS4.BorderStyle = BorderStyle.None;
            HOS9.BorderStyle = BorderStyle.None;
            HOS10.BorderStyle = BorderStyle.None;
            HOS15.BorderStyle = BorderStyle.None;
            Cam3.BorderStyle = BorderStyle.None;

            Border1.BorderStyle = BorderStyle.Solid;
            if (Border2 != null)
            {
                Border2.BorderStyle = BorderStyle.Solid;
            }
        }



        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging1(object sender, DetailsViewPageEventArgs e)
        {

        }

    }
}