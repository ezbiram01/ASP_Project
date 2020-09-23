/*
Programmeur: ziad Biram
Bute       : Projet 2
Date       : 25 mars 2022

WebForm : Information.aspx
cs      : Information.aspx.cs
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projet_2_ClientsEmploye
{
    public partial class Information : System.Web.UI.Page
    {

        #region Bouton login pour Cookies 
        protected void loginButton_Click(object sender, EventArgs e)
        {
            HttpCookie myCookie = new HttpCookie("utilisateur");

            myCookie.Values["nom"] = nomCokieTextBox.Text;
            myCookie.Values["prenom"] = prenomCokiesTextBox.Text;

            myCookie.Expires = DateTime.Now.AddMinutes(30);
            Response.Cookies.Add(myCookie);
        }
        #endregion
    }
}