using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class Depiler : System.Web.UI.Page
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
            ActualCompName2.Text = "Not in Database";
            ActualCompAddress.Text = "Camera";
            ActualCompRunning.Value = "Camera";
            ActualCompType.Text = "Camera";
            ActualIPAddress.Text = "Camera";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = true;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = true;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void Level3_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Level 3 Computer";
            ActualCompName2.Text = "Not in Database";
            ActualCompAddress.Text = "Level 3 Computer";
            ActualCompRunning.Value = "Level 3 Computer";
            ActualCompType.Text = "Level 3 Computer";
            ActualIPAddress.Text = "Level 3 Computer";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = true;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = true;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void Controls_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Depiler Controller";
            ActualCompName2.Text = "Not in Database";
            ActualCompAddress.Text = "Depiler Controller";
            ActualCompRunning.Value = "Depiler Controller";
            ActualCompType.Text = "Depiler Controller";
            ActualIPAddress.Text = "Depiler Controller";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = true;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = true;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void DPSIT1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-DPSIT1";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
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

        protected void DPSIT2_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-DPSIT2";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
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

        protected void DP01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-DP01";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
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

        protected void IBACamOCR_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-DP01";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
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
            DP1.BorderStyle = BorderStyle.None;
            DPControl.BorderStyle = BorderStyle.None;
            Camera2.BorderStyle = BorderStyle.None;
            Camera3.BorderStyle = BorderStyle.None;
            DPSIT1.BorderStyle = BorderStyle.None;
            DPSIT2.BorderStyle = BorderStyle.None;
            Camera1.BorderStyle = BorderStyle.None;
            Level3.BorderStyle = BorderStyle.None;
            IBACamOCR.BorderStyle = BorderStyle.None;

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