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

public partial class addcriminal : System.Web.UI.Page
{
      string constrn = ConfigurationManager.ConnectionStrings["crimeconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bindrop();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
         using (MySqlConnection con = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd = new MySqlCommand("INSERT INTO tr_criminal(FIRNo,Name,Age,CrimeDesc,OfficerAllocated,address,mobile,gender,CrimeDate) VALUES (@FIRNo,@Name,@Age,@CrimeDesc,@OfficerAllocated,@address,@mobile,@gender,@CrimeDate)"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    string gender="Male";
                    if(RadioButton2.Checked)
                    {  gender="Female";
                    }
                    cmd.Parameters.AddWithValue("@FIRNo", drpfir.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Name", txtName.Text);
                    cmd.Parameters.AddWithValue("@Age", txtAge.Text);
                    cmd.Parameters.AddWithValue("@CrimeDesc", txtCrime.Text);
                    cmd.Parameters.AddWithValue("@OfficerAllocated", drpallo.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@gender", gender); 
                    cmd.Parameters.AddWithValue("@mobile", txtMbl.Text);
                    cmd.Parameters.AddWithValue("@CrimeDate", txtdatecrime.Text);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "Crimal Added Successfully...";
                    con.Close();
                }
            }

        }
    }

    private void Bindrop()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select Distinct FIRNo from tr_fir"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        drpfir.DataSource = dt;
                        drpfir.DataTextField = "FIRNo";
                        drpfir.DataValueField = "FIRNo";
                        drpfir.DataBind();

                    }
                }
            }

            using (MySqlCommand cmd1 = new MySqlCommand("select Distinct OfficerID from mt_officer"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        drpallo.DataSource = dt;
                        drpallo.DataTextField = "OfficerID";
                        drpallo.DataValueField = "OfficerID";
                        drpallo.DataBind();

                    }
                }
            }
        }


    }

    }
