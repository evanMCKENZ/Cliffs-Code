using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class FinishingMillRoller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;


        }
        protected void IT_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Level 3 Computer";
            ActualCompName2.Text = "Not in Database";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = true;
            CompNameLabel.Visible = true;
        }
        protected void FMFM05_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM05";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void LiveView_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMSIS-LV02";
            this.Border(Display2, Display3);
            ActualCompName.Visible = false;
        }
        protected void ASISINSP_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "ASIS-INSP-FM";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
        }
        /**
* This function handles the borders put around a clicked computer.
* Previous1 is the first computer that needs its border removed
* Previous2 is the second, it could be null if there is not a second screen on the computer clicked
*/
        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            ITComputer.BorderStyle = BorderStyle.None;
            HMTCCK01B.BorderStyle = BorderStyle.None;
            Display2.BorderStyle = BorderStyle.None;
            Display3.BorderStyle = BorderStyle.None;
            ASISINSPA.BorderStyle = BorderStyle.None;

            Border1.BorderStyle = BorderStyle.Solid;
            if (Border2 != null)
            {
                Border2.BorderStyle = BorderStyle.Solid;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging1(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}