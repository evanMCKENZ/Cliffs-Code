using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class WebForm5 : System.Web.UI.Page
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

        //----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

        protected void Work1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompAddress.Text = "";
            ActualCompName2.Text = "HMTC-L2MPWF1";
            ActualCompName.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
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

        protected void Work2_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompAddress.Text = "";
            ActualCompName2.Text = "HMTC-L1MPWF9";
            ActualCompName.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
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

        protected void Work3_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompAddress.Text = "";
            ActualCompName2.Text = "HMTC-L1MPWF10";
            ActualCompName.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
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

        protected void Work4_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompAddress.Text = "";
            ActualCompName2.Text = "HMTC-L2MPWF2";
            ActualCompName.Text = "";
            ActualCompRunning.Value = "";
            ActualCompType.Text = "";
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

        //----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            Workstation1.BorderStyle = BorderStyle.None;
            Workstation2.BorderStyle = BorderStyle.None;
            Workstation3.BorderStyle = BorderStyle.None;
            Workstation4.BorderStyle = BorderStyle.None;
            


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