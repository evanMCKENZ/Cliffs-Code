using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class Coiler : System.Web.UI.Page
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
        }

        protected void HMTCCL01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-CL01";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }

        protected void CaptainPlaceholder_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "Unknown Computer, PLACEHOLDER";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }

        protected void HSMHMICL11_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-CL11";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }

        protected void HMTCCL02_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-CL02";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }
        protected void HMTCCL10_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-CL10";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }
        protected void HMTCCL11_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-CL11";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }
        protected void HMTCCL13_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-CL13";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }
        protected void HSMHMICL01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-CL01";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }

        protected void HSMHMICL12_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-CL12";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }
        protected void HSMHMICL13_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-CL13";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }
        protected void WS0341_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "WS0341";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }
        protected void HSMHMICL03_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMHMI-CL03";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
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
            CL10.BorderStyle = BorderStyle.None;
            HMTCCL01.BorderStyle = BorderStyle.None;
            HSMHMICL01.BorderStyle = BorderStyle.None;
            HMTCCL02.BorderStyle = BorderStyle.None;
            HSMHMICL11.BorderStyle = BorderStyle.None;
            HSMHMICL12.BorderStyle = BorderStyle.None;
            HSMHMICL13.BorderStyle = BorderStyle.None;
            WS0341.BorderStyle = BorderStyle.None;
            HSMHMICL03.BorderStyle = BorderStyle.None;
            HSMHMICL01.BorderStyle = BorderStyle.None;

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