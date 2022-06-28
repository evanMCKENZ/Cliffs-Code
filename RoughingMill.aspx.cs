using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }
        protected void HMTCRM03_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-RM03";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void RM02_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-RM02";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void HMIRM03_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-RM03";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void Camera_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Camera";
            ActualCompName2.Text = "Not in Database";
            ActualCompAddress.Text = "Camera";
            ActualCompType.Text = "Camera";
            ActualCompRunning.Value = "Camera";
            ActualIPAddress.Text = "Camera";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = true;
            CompNameLabel.Visible = true;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void ITStandalone_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "IT Standalone";
            ActualCompName2.Text = "Not in Database";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = true;
            CompNameLabel.Visible = true;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void RM13_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-RM13";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void RM14_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-RM14";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void RM01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-RM01";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }
        protected void HSMHMIRM01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-RM01";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }
        protected void HSMHMIRM02_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-RM02";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void HSMHMIRM04_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-RM04";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void HOSMM1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HOSMM1";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        /**
* This function handles the borders put around a clicked computer.
* Previous1 is the first computer that needs its border removed
* Previous2 is the second, it could be null if there is not a second screen on the computer clicked
*/
        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            CameraDisplay.BorderStyle = BorderStyle.None;
            CameraDisplay2.BorderStyle = BorderStyle.None;
            CameraDisplay3.BorderStyle = BorderStyle.None;
            CameraDisplay4.BorderStyle = BorderStyle.None;
            CameraDisplay0.BorderStyle = BorderStyle.None;
            Vizimation.BorderStyle = BorderStyle.None;
            GraphDisplays.BorderStyle = BorderStyle.None;
            RoughingMillTracking.BorderStyle = BorderStyle.None;
            RoughingMillSlab.BorderStyle = BorderStyle.None;
            RMAutoStatusDisplay4.BorderStyle = BorderStyle.None;
            RMAutoStatusDisplay2.BorderStyle = BorderStyle.None;
            RMAutoStatusDisplay1.BorderStyle = BorderStyle.None;
            ITStandalone.BorderStyle = BorderStyle.None;
            HSMHMIRM03.BorderStyle = BorderStyle.None;
            HSMHMIRM04.BorderStyle = BorderStyle.None;
            HOSMM1.BorderStyle = BorderStyle.None;

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

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}