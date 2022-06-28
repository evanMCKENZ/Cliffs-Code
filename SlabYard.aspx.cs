using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class SlabYard : System.Web.UI.Page
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

        protected void WS1028_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-WS1028";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border(WS1028_1, WS1028_2);
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

        protected void STSSUPER1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-STSSUPER01";
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
        protected void SYVID02_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSM-SYVID02";
            ActualCompAddress.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
            ActualIPAddress.Text = "";
            this.Border(SYVID02_1, null);
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
            SYVID02_1.BorderStyle = BorderStyle.None;
            SYVID02_2.BorderStyle = BorderStyle.None;
            SYVID02_3.BorderStyle = BorderStyle.None;
            SYVID02_4.BorderStyle = BorderStyle.None;
            STSSUPER1.BorderStyle = BorderStyle.None;
            WS1028_1.BorderStyle = BorderStyle.None;
            WS1028_2.BorderStyle = BorderStyle.None;

            Border1.BorderStyle = BorderStyle.Solid;
            if (Border2 != null)
            {
                Border2.BorderStyle = BorderStyle.Solid;
            }
            if (SYVID02_1.BorderStyle == BorderStyle.Solid)
            {
                SYVID02_2.BorderStyle = BorderStyle.Solid;
                SYVID02_3.BorderStyle = BorderStyle.Solid;
                SYVID02_4.BorderStyle = BorderStyle.Solid;
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



