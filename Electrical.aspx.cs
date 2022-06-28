using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class Electrical : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void ITComputer_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "IT Computer";
            ActualCompName2.Text = "Not In Database";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = true;
            CompNameLabel.Visible = true;
        }
        protected void HSMTECH55_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMTECH-55";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void VIZMON_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSM-VIZMON";
            this.Border(VIZMONA, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void L1DEV_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-L1DEV-TR";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            CompNameLabel.Visible = false;
        }
        protected void EM01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "HMTC-EM01";
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
            ITComputer1.BorderStyle = BorderStyle.None;
            ITComputer2.BorderStyle = BorderStyle.None;
            ITComputer3.BorderStyle = BorderStyle.None;
            ITComputer4.BorderStyle = BorderStyle.None;
            HSMTECH55.BorderStyle = BorderStyle.None;
            VIZMONA.BorderStyle = BorderStyle.None;
            VIZMONB.BorderStyle = BorderStyle.None;
            VIZMONC.BorderStyle = BorderStyle.None;
            L1DEV.BorderStyle = BorderStyle.None;
            EM01.BorderStyle = BorderStyle.None;

            Border1.BorderStyle = BorderStyle.Solid;
            if (Border2 != null)
            {
                Border2.BorderStyle = BorderStyle.Solid;
            }

            if (VIZMONA.BorderStyle == BorderStyle.Solid)
            {
                VIZMONB.BorderStyle = BorderStyle.Solid;
                VIZMONC.BorderStyle = BorderStyle.Solid;
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