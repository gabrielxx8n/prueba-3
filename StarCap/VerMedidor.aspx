<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerMedidor.aspx.cs" Inherits="StarCap.VerMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
        <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Ver Medidor</h3>
                </div>
                <div class="card-body">
                    <asp:GridView CssClass="table table-hover table-bordered" runat="server" 
                         OnRowCommand="grillaCliente_RowCommand"
                         AutoGenerateColumns="false" ID="grillaCliente">
                        <Columns>
                            <asp:BoundField DataField="Rut" HeaderText="Nombre del Cliente" />
                            <asp:BoundField DataField="Nombre" HeaderText="Numero de Medidor" />
                            <asp:BoundField DataField="NivelTxt" HeaderText="Tipo de Cliente"/>
                            <asp:BoundField DataField="BebidaFavorita.Nombre" HeaderText="Tipo de Medidor" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button CommandName="elimina" CommandArgument='<%# Eval("Rut") %>' 
                                        
                                        runat="server" CssClass="btn btn-danger" Text="Eliminar" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
