using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class FinishingMillAssistRoller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMOp1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Finishing Mill Assistant Roller";
            ActualCompName2.Text = "Not In Database";
            ActualCompName.Visible = true;
            CompNameLabel.Visible = true;
        }
        protected void Camera_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Camera";
            ActualCompName2.Text = "Not In Database";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = true;
            CompNameLabel.Visible = true;
        }
        protected void FMBarProfile_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSM-FMCLIENT";
            this.Border(FinishingMillHT, FinishingMillBarProfile);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM21_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM21";
            this.Border(FinishingMillFM21, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM08_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM08";
            this.Border(FinishingMillFM08A, FinishingMillFM08B);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMHT_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSM-FMCLIENT";
            this.Border(FinishingMillHT, FinishingMillBarProfile);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM20_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM20";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM04_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM04";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM06_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM06";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM22_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM22";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM23_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM23";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM03_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM03";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM24_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM24";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void FMFM07_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-FM07";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        /**
         * This function handles the borders put around a clicked computer.
         * Previous1 is the first computer that needs its border removed
         * Previous2 is the second, it could be null if there is not a second screen on the computer clicked
         */
        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            Camera1.BorderStyle = BorderStyle.None;
            Camera2.BorderStyle = BorderStyle.None;
            Camera3.BorderStyle = BorderStyle.None;
            FinishingMillFM21.BorderStyle = BorderStyle.None;
            FinishingMillHT.BorderStyle = BorderStyle.None;
            FinishingMillBarProfile.BorderStyle = BorderStyle.None;
            FinishingMillFM08A.BorderStyle = BorderStyle.None;
            FinishingMillFM08B.BorderStyle = BorderStyle.None;
            FinishingMillFM22.BorderStyle = BorderStyle.None;
            FinishingMillFM23.BorderStyle = BorderStyle.None;
            FinishingMillFM24.BorderStyle = BorderStyle.None;
            FinishingMillFM20.BorderStyle = BorderStyle.None;
            FinishingMillFM04.BorderStyle = BorderStyle.None;
            FinishingMillFM06.BorderStyle = BorderStyle.None;
            FinishingMillFM03.BorderStyle = BorderStyle.None;
            FinishingMillFM07.BorderStyle = BorderStyle.None;
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

        protected void Display26_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}