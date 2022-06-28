using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Label1.Text = "Shipping Stats for " + DateTime.Today.ToString("MM/dd/yyyy");

                string example = "Coils Shipped In the Last Month: ";
                string example1 = "Coils Shipped On: " + DateTime.Today.AddDays(-7).ToString("MM/dd/yyyy");
                string example2 = "Coils Shipped On: " + DateTime.Today.AddDays(-6).ToString("MM/dd/yyyy");
                string example3 = "Coils Shipped On: " + DateTime.Today.AddDays(-5).ToString("MM/dd/yyyy");
                string example4 = "Coils Shipped On: " + DateTime.Today.AddDays(-4).ToString("MM/dd/yyyy");
                string example5 = "Coils Shipped On: " + DateTime.Today.AddDays(-3).ToString("MM/dd/yyyy");
                string example6 = "Coils Shipped On: " + DateTime.Today.AddDays(-2).ToString("MM/dd/yyyy");
                string example7 = "Coils Shipped On: " + DateTime.Today.AddDays(-1).ToString("MM/dd/yyyy");

                DetailsView4.Rows[0].Cells[0].Text = example;
                DetailsView4.Rows[1].Cells[0].Text = example1;
                DetailsView4.Rows[2].Cells[0].Text = example2;
                DetailsView4.Rows[3].Cells[0].Text = example3;
                DetailsView4.Rows[4].Cells[0].Text = example4;
                DetailsView4.Rows[5].Cells[0].Text = example5;
                DetailsView4.Rows[6].Cells[0].Text = example6;
                DetailsView4.Rows[7].Cells[0].Text = example7;


                Chart1.DataSourceID = "SqlDataSource1";
                Chart1.Series["Series1"].XValueMember = "wack";
                Chart1.Series["Series1"].YValueMembers = "weekly";
                Chart1.Series["Series1"].BorderWidth = 3;

            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging1(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}