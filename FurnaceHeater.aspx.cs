using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class WebForm2 : System.Web.UI.Page
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

        protected void Camera_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Camera";
            ActualCompName2.Text = "Not In Database";
            ActualCompAddress.Text = "Level 1";
            ActualCompType.Text = "Level 1 Camera";
            ActualCompRunning.Value = "Camera Feed";
            ActualIPAddress.Text = "Unknown";
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

        protected void Camera2_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Camera";
            ActualCompName2.Text = "Not In Database";
            ActualCompAddress.Text = "Level 1";
            ActualCompType.Text = "Level 1 Camera";
            ActualCompRunning.Value = "Camera Feed";
            ActualIPAddress.Text = "Unknown";
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

        protected void FurnOP1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMFCE-OP1";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }
        protected void FurnOP2_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMFCE-OP2";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }
        protected void FurnOP3_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMFCE-OP3";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false; ;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void FC01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-FC01";
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

        protected void FC02_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-FC02";
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

        protected void HOS1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-HOSMMI5";
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

        protected void HOS2_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-HOSMMI2";
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

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompAddress.Text = "Camera";
            ActualCompName2.Text = "Not In Database";
            ActualCompName.Text = "Level 1";
            ActualCompRunning.Value = "Camera";
            ActualCompType.Text = "Level 1";
            ActualIPAddress.Text = "?";
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

        protected void Image2_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompAddress.Text = "Camera";
            ActualCompName2.Text = "Not In Database";
            ActualCompName.Text = "Level 1";
            ActualCompRunning.Value = "Camera";
            ActualCompType.Text = "Level 1";
            ActualIPAddress.Text = "?";
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

        protected void Image3_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompAddress.Text = "Camera";
            ActualCompName2.Text = "Not In Database";
            ActualCompName.Text = "Level 1";
            ActualCompRunning.Value = "Camera";
            ActualCompType.Text = "Level 1";
            ActualIPAddress.Text = "?";
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

        protected void Image4_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompAddress.Text = "Camera";
            ActualCompName2.Text = "Not In Database";
            ActualCompName.Text = "Level 1";
            ActualCompRunning.Value = "Camera";
            ActualCompType.Text = "Level 1";
            ActualIPAddress.Text = "?";
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

        protected void Standalone_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompAddress.Text = "IT Standalone";
            ActualCompName2.Text = "Not In Database";
            ActualCompName.Text = "Level 1";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "Level 1";
            ActualIPAddress.Text = "?";
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

        /**
* This function handles the borders put around a clicked computer.
* Previous1 is the first computer that needs its border removed
* Previous2 is the second, it could be null if there is not a second screen on the computer clicked
*/
        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            RS3Left3.BorderStyle = BorderStyle.None;
            RS3Left2.BorderStyle = BorderStyle.None;
            RS3Left4.BorderStyle = BorderStyle.None;
            RS3Left.BorderStyle = BorderStyle.None;
            RS3Left0.BorderStyle = BorderStyle.None;
            RS3Left1.BorderStyle = BorderStyle.None;
            RS3Left5.BorderStyle = BorderStyle.None;
            RS3Left6.BorderStyle = BorderStyle.None;
            RS3Left7.BorderStyle = BorderStyle.None;
            RS3Left8.BorderStyle = BorderStyle.None;
            RS3Left9.BorderStyle = BorderStyle.None;
            RS3Left10.BorderStyle = BorderStyle.None;
            HOS1.BorderStyle = BorderStyle.None;
            Camera1.BorderStyle = BorderStyle.None;
            HOS2.BorderStyle = BorderStyle.None;
            Camera2.BorderStyle = BorderStyle.None;
            FC01.BorderStyle = BorderStyle.None;
            FC02.BorderStyle = BorderStyle.None;
            Image1.BorderStyle = BorderStyle.None;
            Image2.BorderStyle = BorderStyle.None;
            Image3.BorderStyle = BorderStyle.None;
            Image4.BorderStyle = BorderStyle.None;
            Image5.BorderStyle = BorderStyle.None;
            Image6.BorderStyle = BorderStyle.None;
            Image7.BorderStyle = BorderStyle.None;
            ITStandalone.BorderStyle = BorderStyle.None;


            Border1.BorderStyle = BorderStyle.Solid;
            if (Border2 != null)
            {
                Border2.BorderStyle = BorderStyle.Solid;
            }
        }


        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging1(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}