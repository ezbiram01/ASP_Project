/*
Programmeur: ziad Biram
Bute       : Projet 2
Date       : 25 mars 2022

WebForm : Clients.aspx
cs      : Clients.aspx.cs
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Projet_2_ClientsEmploye
{
    public partial class Clients : System.Web.UI.Page
    {
        #region Bouton Rechercher Sql Connection
        protected void rechercherButton_Click(object sender, EventArgs e)
        {
            SqlConnection northWindSqlConnection = null;
            SqlDataReader customerSqlDataReader = null;
            CustomerGridView.Visible = true;
            try
            {
                // Définir les paramètres de la connexion

                northWindSqlConnection = new SqlConnection(Properties.Settings.Default.NorthWindConnectionString);

                // Identifier la procédure stockée "Stored Procedure"

                SqlCommand customerSqlCommand;
                customerSqlCommand = new SqlCommand();

                customerSqlCommand.Connection = northWindSqlConnection;
                customerSqlCommand.CommandType = CommandType.Text;
                customerSqlCommand.CommandText = "SELECT CompanyName, ContactName, ContactTitle, Country, Phone FROM Customers WHERE Country = @countryVar";

                // Définir le paramètre de la procédure stockée

                SqlParameter customerIDSqlParameter = new SqlParameter();

                customerIDSqlParameter.Direction = ParameterDirection.Input;
                customerIDSqlParameter.ParameterName = "@countryVar";
                customerIDSqlParameter.SqlDbType = SqlDbType.NVarChar;
                customerIDSqlParameter.Value = payerTextBox.Text;
                customerSqlCommand.Parameters.Add(customerIDSqlParameter);

                
                // Ouvrir la connexion

                northWindSqlConnection.Open();

                customerSqlDataReader = customerSqlCommand.ExecuteReader();

                // Afficher l'information sur la page Web (utilisant un GridView)

                DataTable customerDataTable = new DataTable();

                customerDataTable.Load(customerSqlDataReader);  // Automatiquement ferme le DataReader

                CustomerGridView.DataSource = customerDataTable;
                CustomerGridView.DataBind();   // TOUJOURS COMPLEX BINDING  ASP:Controles


                if(CustomerGridView.Rows.Count <= 1)
                {
                    NombreClientLabel.Text = "il y a " + CustomerGridView.Rows.Count + " client dans le payer: " + payerTextBox.Text;
                }
                else
                {
                    NombreClientLabel.Text = "il y a " + CustomerGridView.Rows.Count + " clients dans le payer: " + payerTextBox.Text;
                }
            }

            catch (Exception customerException)
            {
                this.Response.Write(customerException.ToString());
            }

            finally
            {
                // Fermer la connexion

                if (customerSqlDataReader != null)
                {
                    if (!customerSqlDataReader.IsClosed)
                        customerSqlDataReader.Close();
                }

                if (northWindSqlConnection != null)
                {
                    if (northWindSqlConnection.State == ConnectionState.Open)
                        northWindSqlConnection.Close();
                }
            }

        }
        #endregion

        #region Button annuler
        protected void annulerButton_Click(object sender, EventArgs e)
        {
            payerTextBox.Text = "";
            NombreClientLabel.Text = "";
            CustomerGridView.Visible = false;
        }
        #endregion
    }
}