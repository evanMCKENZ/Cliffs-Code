using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class FinishingMillSpeedop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;

        }
        protected void FMFM11_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM11";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM10_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM10";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM02_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM02";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMBarProfile_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSM-FMCLIENT";
            this.Border(BarProfile, HeadTailDisplay);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM12_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM12";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM13_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM13";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM01";
            this.Border(FinishingMillFM01A, FinishingMillFM01B);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMHT_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSM-FMCLIENT";
            this.Border(BarProfile, HeadTailDisplay);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void Camera_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Camera";
            ActualCompName2.Text = "Not In Database";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = true;
            CompNameLabel.Visible = true;
        }
        protected void ITStandalone_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "BHW-WS1237";
            ActualCompName2.Text = "Not In Database";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = true;
            CompNameLabel.Visible = true;
        }
        /**
* This function handles the borders put around a clicked computer.
* Previous1 is the first computer that needs its border removed
* Previous2 is the second, it could be null if there is not a second screen on the computer clicked
*/
        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            Camera3.BorderStyle = BorderStyle.None;
            FinishingMillFM02.BorderStyle = BorderStyle.None;
            HeadTailDisplay.BorderStyle = BorderStyle.None;
            BarProfile.BorderStyle = BorderStyle.None;
            FinishingMillFM10.BorderStyle = BorderStyle.None;
            FinishingMillFM11.BorderStyle = BorderStyle.None;
            FinishingMillFM12.BorderStyle = BorderStyle.None;
            Camera5.BorderStyle = BorderStyle.None;
            Camera2.BorderStyle = BorderStyle.None;
            Camera1.BorderStyle = BorderStyle.None;
            FinishingMillFM01A.BorderStyle = BorderStyle.None;
            FinishingMillFM01B.BorderStyle = BorderStyle.None;
            FinishingMillFM13.BorderStyle = BorderStyle.None;
            ITStandalone.BorderStyle = BorderStyle.None;

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