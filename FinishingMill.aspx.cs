using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class FinishingMill : System.Web.UI.Page
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
        protected void IT_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "IT Standalone";
            ActualCompName2.Text = "WS0463";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }
        protected void HSMHMIFM01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-FM01";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }
        protected void GPHFM01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-GPHFM01";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }
        protected void Camera_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Camera";
            ActualCompName2.Text = "Not in Database";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }
        /**
* This function handles the borders put around a clicked computer.
* Previous1 is the first computer that needs its border removed
* Previous2 is the second, it could be null if there is not a second screen on the computer clicked
*/
        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            Camera.BorderStyle = BorderStyle.None;
            Camera2.BorderStyle = BorderStyle.None;
            HSMHMITS1.BorderStyle = BorderStyle.None;
            ITStandalone.BorderStyle = BorderStyle.None;
            HSMHMIFM01.BorderStyle = BorderStyle.None;

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