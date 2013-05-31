using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
namespace ClientesInacap
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            SqlConnection conn = new SqlConnection("Data Source=ESTEBAN-LAPTOP;Initial Catalog=Inacap;Persist Security Info=True;User ID=fme;Password=321");
            conn.Open();

            SqlCommand comando = new SqlCommand("INSERT INTO Clientes (rut ,nombre,apellidos,  fechaNacimiento , sexo,  estadocivil , correo) values (@rut,@nombre, @ap, @fnac,@sexo,@estadoCivil,@email)", conn);


            comando.Parameters.AddWithValue("@rut",txtRut.Text);
            comando.Parameters.AddWithValue("@nombre", txtNombres.Text);
            comando.Parameters.AddWithValue("@ap", txtApellidos.Text);
            comando.Parameters.AddWithValue("@fnac", txtFNac.Text);
            String sexo = "1";
            if(rbMasc.Checked){
                sexo = "1";
            }
            if(rbFem.Checked){
                sexo = "2";
            }
            comando.Parameters.AddWithValue("@sexo", sexo);
            comando.Parameters.AddWithValue("@estadoCivil", cboEstado.SelectedValue);
            comando.Parameters.AddWithValue("@email", txtMail.Text);

            if(comando.ExecuteNonQuery()>0){
                conn.Close();
                Response.Redirect("Ok.aspx");
            
            }else{
                conn.Close();
                Response.Redirect("Error.aspx");
            }



        }

      
    }
}