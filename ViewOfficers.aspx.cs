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


public partial class ViewOfficers : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["crimeconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }
    private void BindGrid()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select OfficerID,Name,Desig,Remarks from mt_officer"))
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
}