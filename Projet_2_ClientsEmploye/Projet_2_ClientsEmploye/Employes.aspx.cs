/*
Programmeur: ziad Biram
Bute       : Projet 2
Date       : 25 mars 2022

WebForm : Employes.aspx
cs      : Employes.aspx.cs
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projet_2_ClientsEmploye
{
    public partial class Employes : System.Web.UI.Page
    {
        #region Evenement RowCommand
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row;
            row = GridView1.Rows[index];
            nomTextBox.Text = row.Cells[2].Text;
            prenomTextBox.Text = row.Cells[3].Text;
        }
        #endregion
    }
}