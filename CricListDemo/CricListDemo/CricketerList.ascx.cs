using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricListDemo.CricListDemo
{
    public partial class CricketerList : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                rptCricketers.DataSource = 
                    Sitecore.Context.Item.Children;
                rptCricketers.DataBind();
            }
        }
    }
}