﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StarCap.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="mensajes">
                <asp:Label runat="server" ID="mensajesLbl" CssClass="text-success"> </asp:Label> 
            </div>
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h3>Agregar Medidor</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="nombreTxt">Nombre Titular</label>
                        <asp:TextBox ID="nombretxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="rutTxt">Nro Medidor</label>
                        <asp:TextBox ID="ruttxt" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="bebidaDbl">Tipo de Medidor</label>                        
      <!--<select>-->  <asp:DropDownList runat="server" ID="bebidaDbl" CssClass="form-select" AppendDataBoundItems="true">
                            <asp:ListItem Text="Seleccione una opcion"></asp:ListItem>

                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="nivelRbl">Tipo de Usuario</label>
                        <asp:RadioButtonList runat="server" ID="nivelRbl">
                           <asp:ListItem Text="Empresa" Value="1"></asp:ListItem> 
                           <asp:ListItem Text="Domicilio" Value="2"></asp:ListItem> 
                        </asp:RadioButtonList>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="agregarBtn" OnClick="agregarBtn_Click" Text="Agregar" CssClass="btn btn-primary btn-lg" />

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
