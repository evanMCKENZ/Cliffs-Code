using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AsisComputer_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "ASIS-INSP-FR";
            this.Border((ImageButton)sender, null);
        }

        protected void VistaComputer_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "HMTC-FR01";
            this.Border((ImageButton)sender, null);
        }

        protected void HOS01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "BHW-HSMHMI-FR01";
            this.Border(HOS01, IBACAM01);
        }

        protected void IBACam02A_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "BHW-HSMHMI-FR02";
            this.Border(IBACam02A, IBACam02B);
        }

        protected void Standalone_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "IT Standalone";
            this.Border(HOS2, IBACAM2);
        }
        protected void LV03_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "BHW-HSMSIS-LV03";
            this.Border(LV03A, LV03B);
        }

        /**
* This function handles the borders put around a clicked computer.
* Previous1 is the first computer that needs its border removed
* Previous2 is the second, it could be null if there is not a second screen on the computer clicked
*/
        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            IBACam02A.BorderStyle = BorderStyle.None;
            IBACam02B.BorderStyle = BorderStyle.None;
            IBACAM01.BorderStyle = BorderStyle.None;
            IBACAM2.BorderStyle = BorderStyle.None;
            HOS01.BorderStyle = BorderStyle.None;
            HOS2.BorderStyle = BorderStyle.None;
            AsisComputer1.BorderStyle = BorderStyle.None;
            VistaComputer1.BorderStyle = BorderStyle.None;
            LV03A.BorderStyle = BorderStyle.None;
            LV03B.BorderStyle = BorderStyle.None;

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