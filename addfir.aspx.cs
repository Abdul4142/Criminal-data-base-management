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
public partial class addfir : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["crimeconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd = new MySqlCommand("INSERT INTO tr_fir(FIRNo,District,PoliceStation,FIRDesc) VALUES (@FIRNo,@District,@PoliceStation,@FIRDesc)"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@FIRNo", txtFIRNo.Text);
                    cmd.Parameters.AddWithValue("@District", DrpDist.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@PoliceStation", DrpPolice.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@FIRDesc", txtFirDesc.Text);

                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "FIR Added Successfully...";
                    con.Close();
                }
            }

        }
    }

    private void BindGrid()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select stationName from mt_station"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        DrpPolice.DataSource = dt;
                        DrpPolice.DataTextField = "stationName";
                        DrpPolice.DataValueField = "stationName";
                        DrpPolice.DataBind();

                    }
                }
            }
        }


    }
}