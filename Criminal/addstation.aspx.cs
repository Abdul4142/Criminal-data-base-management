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

public partial class addstation : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["crimeconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd = new MySqlCommand("INSERT INTO mt_station(stationName,location,incharge) VALUES (@stationName,@location,@incharge)"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@stationName", txtstation.Text);
                    cmd.Parameters.AddWithValue("@location", txtlocation.Text);
                    cmd.Parameters.AddWithValue("@incharge", txtincharge.Text);
               
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "Station Added Successfully...";
                    con.Close();
                }
            }

        }
    }
}