using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class CheckerShanny : System.Web.UI.Page
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

        protected void ASISINSP_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "ASIS-INSP-CK";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border(ASISINSPA, ASISINSPB);
        }

        protected void CK01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-CK01";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border(HMTCCK01A, HMTCCK01B);
        }

        protected void CHKWEB01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-CHKWEB01";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
        }

        protected void LiveView_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMSIS-LV01";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border(Display2, Display3);
        }
        /**
    * This function handles the borders put around a clicked computer.
    * Previous1 is the first computer that needs its border removed
    * Previous2 is the second, it could be null if there is not a second screen on the computer clicked
    */
        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            ASISINSPA.BorderStyle = BorderStyle.None;
            ASISINSPB.BorderStyle = BorderStyle.None;
            Display2.BorderStyle = BorderStyle.None;
            Display3.BorderStyle = BorderStyle.None;
            HMTCCK01B.BorderStyle = BorderStyle.None;
            HMTCCK01A.BorderStyle = BorderStyle.None;
            CHKWEB01.BorderStyle = BorderStyle.None;

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