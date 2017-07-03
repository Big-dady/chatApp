using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


namespace vinayak_chat
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DD-PC;Initial Catalog=DB_VINAYAK;User Id=sa;Password=123;");
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtname1.Text = "";
                txtpass.Text = "";
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            string q = "select * from log where username='" + txtname1.Text + "' and passsword='" + txtpass.Text + "'";
            SqlCommand cmd = new SqlCommand(q);
            SqlDataAdapter adp = new SqlDataAdapter(q, con);
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["name"] = txtname1.Text;
                Response.Redirect("chat.aspx");
                //lbluname.Text = "Welcome " + txtname.Text;
                //txtname.Text = "";
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Login fail');", true);

            }
        }
        protected void rigister_Click(object sender, EventArgs e)
        {
            string EncodedResponse = Request.Form["g-Recaptcha-Response"];
            //bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse) == "True" ? true : false);

            //if (IsCaptchaValid)
            //{
                if (pastxt.Text == repass.Text && txtname.Text != "" && pastxt.Text != "")
                {
                    string q1 = "select * from log where username='" + txtname.Text + "'";
                    SqlCommand c = new SqlCommand(q1);
                    SqlDataAdapter a = new SqlDataAdapter(q1, con);
                    a.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Userame Taken: Please select a different username');", true);

                    }
                    else
                    {
                        string q = "insert into log(username,passsword)values(@username,@passsword)";
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = q;
                        SqlDataAdapter adp = new SqlDataAdapter(q, con);

                        cmd.Parameters.Clear();
                        cmd.Parameters.AddWithValue("@username", txtname.Text);
                        cmd.Parameters.AddWithValue("@passsword", pastxt.Text);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('User registered successfully');", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Please fill the entries properly');", true);
            //    }
            //}
            //else { ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Captcha Error');", true); }
        }
    }
}