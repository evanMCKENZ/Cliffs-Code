using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class Shipping1: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void DECTALK_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "DECTALK";
            this.Border((ImageButton)sender, null);
        }

        protected void IBACAM5_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "BHW-HSMIBA-CAM5";
            this.Border((ImageButton)sender, null);
        }
        protected void IBACAM_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "BHW-HSMIBA";
            this.Border((ImageButton)sender, null);
        }
        protected void CPU31_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "BHW-HSM-CPU31";
            this.Border(COM11A, WS0842);
        }
        protected void WS0842_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "BHW-WS0842";
            this.Border(COM11A, WS0842);
        }
        protected void CR514_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "BHW-GEN-CR514";
            this.Border(CR514, CR514);
        }
        protected void CR520_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "BHW-GEN-CR520";
            this.Border(CR520, CR520);
        }
        protected void CR03_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "HMTC-CR03";
        //    this.Border(CR03A, CR03B);
        }
        protected void COP01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "HMPC_COP01";
         //   this.Border(Cop01A, Cop01B);
        }
        protected void COP02_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "HMPC-COP02";
            this.Border((ImageButton)sender, null);
        }
        protected void COP03_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "HMPC_COP03";
       //     this.Border(Cop03A, Cop03B);
        }
        protected void IBACR02_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "BHW-HSMHMI-CR02";
            this.Border((ImageButton)sender, null);
        }
        protected void IBACR01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "BHW-HSMHMI-CR01";
            this.Border((ImageButton)sender, null);
        }
        protected void CRSIT_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "HMTC-CRSIT3";
            this.Border((ImageButton)sender, null);
        }
        protected void CR02_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "HMTC-CR02";
         //   this.Border(CR02A, CR02B);
        }
        protected void CR01_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName2.Text = "HMTC-CR01";
            this.Border((ImageButton)sender, null);
        }

  
        /**
* This function handles the borders put around a clicked computer.
* Previous1 is the first computer that needs its border removed
* Previous2 is the second, it could be null if there is not a second screen on the computer clicked
*/
        protected void Border(ImageButton Border1, ImageButton Border2)
        {
           // DECTALK.BorderStyle = BorderStyle.None;
            COM11A.BorderStyle = BorderStyle.None;
            WS0842.BorderStyle = BorderStyle.None;
            CR520.BorderStyle = BorderStyle.None;
            CR514.BorderStyle = BorderStyle.None;
            //CR03A.BorderStyle = BorderStyle.None;
            //CR03B.BorderStyle = BorderStyle.None;
            //CompCam1.BorderStyle = BorderStyle.None;
            //CompCam2.BorderStyle = BorderStyle.None;
            //Cop01A.BorderStyle = BorderStyle.None;
            //Cop01B.BorderStyle = BorderStyle.None;
            //Cop02.BorderStyle = BorderStyle.None;
            //Cop03A.BorderStyle = BorderStyle.None;
            //Cop03B.BorderStyle = BorderStyle.None;
            //CRSIT3.BorderStyle = BorderStyle.None;
            ///CR02A.BorderStyle = BorderStyle.None;
            //CR02B.BorderStyle = BorderStyle.None;
            //CR01.BorderStyle = BorderStyle.None;
            //IBACAM5.BorderStyle = BorderStyle.None;
           // HSMIBA.BorderStyle = BorderStyle.None;

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