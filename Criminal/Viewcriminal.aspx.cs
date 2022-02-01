using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public partial class Viewcriminal : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["crimeconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void BindGrid(string txt)
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            string txtquery = "";
            if (txt == "")
            {

                txtquery = "select * from  tr_criminal";
            }
            else
            {
                txtquery = "select * from  tr_criminal where mobile like '%" + txt + "%'";
            }

            using (MySqlCommand cmd1 = new MySqlCommand(txtquery))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                    }
                }
            }
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BindGrid(txtmobile.Text);
    }
}