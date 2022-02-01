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

public partial class addOfficer : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["crimeconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd = new MySqlCommand("INSERT INTO mt_officer(OfficerID,Name,Desig,Remarks) VALUES (@OfficerID,@Name,@Desig,@Remarks)"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@OfficerID", txtoffID.Text);
                    cmd.Parameters.AddWithValue("@Name", txtoffName.Text);
                    cmd.Parameters.AddWithValue("@Desig", drpoffdeg.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Remarks", txtremaks.Text);

                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "Officer Added Successfully...";
                    con.Close();
                }
            }

        }
    }
}