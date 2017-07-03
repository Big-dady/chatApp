using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vinayak_chat
{
    public partial class chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                lbluname.Text = "Welcome " + Session["name"].ToString();
            }
            else
            {
                Response.Redirect("Default.aspx", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string name = Session["name"].ToString();
            string message = txtsend.Text;
            if (message != "")
            {
                string msgbox = name + "::" + message;

                Application["message"] = Application["message"] + msgbox + Environment.NewLine;
                txtsend.Text = "";
            }
        }

        protected void logout_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");

        }
    }
}