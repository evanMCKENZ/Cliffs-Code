using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class SlabYardMobile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void Mobile1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Mobile_01";
            this.Border((ImageButton)sender, null);
        }

        protected void Mobile2_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Mobile_02";
            this.Border((ImageButton)sender, null);
        }

        protected void Mobile3_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Mobile_03";
            this.Border((ImageButton)sender, null);
        }

        protected void Mobile4_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Mobile_04";
            this.Border((ImageButton)sender, null);
        }

        protected void Mobile5_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Mobile_05";
            this.Border((ImageButton)sender, null);
        }

        protected void Mobile6_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Mobile_06";
            this.Border((ImageButton)sender, null);
        }

        protected void Mobile7_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Mobile_07";
            this.Border((ImageButton)sender, null);
        }

        protected void Mobile8_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Mobile_08";
            this.Border((ImageButton)sender, null);
        }

        protected void Mobile9_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Mobile_09";
            this.Border((ImageButton)sender, null);
        }

        protected void Crane1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "CLIENT409";
            this.Border((ImageButton)sender, null);
        }

        protected void Crane2_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "CLIENT412";
            this.Border((ImageButton)sender, null);
        }

        protected void Crane3_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "CLIENT413";
            this.Border((ImageButton)sender, null);
        }

        protected void Crane4_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "CLIENT418";
            this.Border((ImageButton)sender, null);
        }

        protected void Crane5_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "CLIENT501";
            this.Border((ImageButton)sender, null);
        }

        protected void Crane6_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "CLIENT502";
            this.Border((ImageButton)sender, null);
        }

        protected void Crane7_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "CLIENT504";
            this.Border((ImageButton)sender, null);
        }

        protected void Crane8_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "CLIENT505";
            this.Border((ImageButton)sender, null);
        }

        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            Mobile_01.BorderStyle = BorderStyle.None;
            Mobile_02.BorderStyle = BorderStyle.None;
            Mobile_03.BorderStyle = BorderStyle.None;
            Mobile_04.BorderStyle = BorderStyle.None;
            Mobile_05.BorderStyle = BorderStyle.None;
            Mobile_06.BorderStyle = BorderStyle.None;
            Mobile_07.BorderStyle = BorderStyle.None;
            Mobile_08.BorderStyle = BorderStyle.None;
            Mobile_09.BorderStyle = BorderStyle.None;
            CLIENT409.BorderStyle = BorderStyle.None;
            CLIENT412.BorderStyle = BorderStyle.None;
            CLIENT413.BorderStyle = BorderStyle.None;
            CLIENT418.BorderStyle = BorderStyle.None;
            CLIENT501.BorderStyle = BorderStyle.None;
            CLIENT502.BorderStyle = BorderStyle.None;
            CLIENT504.BorderStyle = BorderStyle.None;
            CLIENT505.BorderStyle = BorderStyle.None;

            Border1.BorderStyle = BorderStyle.Solid;
            if (Border2 != null)
            {
                Border2.BorderStyle = BorderStyle.Solid;
            }
        }
    }
}