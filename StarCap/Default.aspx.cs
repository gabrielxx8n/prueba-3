using StarCapModel;
using StarCapModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StarCap
{
    public partial class Default : System.Web.UI.Page
    {
        private IClientesDAL clienteDAL = new ClientesDALObjetos();
        private IBebidasDAL bebidaDAL = new BebidasDALObjetos();

        // metodo a utilizar cuando se carga el form:
        // - cuando es una peticion GET (!PostBack)
        // - cuando es una peticion POST (PostBack)
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Bebida> bebidas = bebidaDAL.ObtenerBebidas();
                this.bebidaDbl.DataSource = bebidas;
                this.bebidaDbl.DataTextField = "Nombre";
                this.bebidaDbl.DataValueField = "Codigo";
                this.bebidaDbl.DataBind();
            }

        }

        protected void agregarBtn_Click(object sender, EventArgs e)
        {
       
            string nombre = this.nombretxt.Text.Trim();
            string rut = this.ruttxt.Text.Trim();
            //obtiene el valor del DropDown
            string bebidaValor = this.bebidaDbl.SelectedValue;

            string bebidaTexto = this.bebidaDbl.SelectedItem.Text;

            int nivel = Convert.ToInt32(nivelRbl.SelectedItem.Value);


            List<Bebida> bebidas = bebidaDAL.ObtenerBebidas();
            Bebida bebida = bebidas.Find(b => b.Codigo == this.bebidaDbl.SelectedItem.Value);

       
            Cliente cliente = new Cliente()
            {
                Nombre = nombre,
                Rut = rut,
                Nivel = nivel,
                Bebidafavorita = bebida
            };

            clienteDAL.Agregar(cliente);

            this.mensajesLbl.Text = "Cliente Guardado correctamente";
            Response.Redirect("VerMedidor.aspx");
        }
    }
}