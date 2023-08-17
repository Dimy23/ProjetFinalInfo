<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="ProjetFinalInfo.Patients" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/formItems.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:ToolkitScriptManager ID="toolkit1" runat="server"></asp:ToolkitScriptManager>

        <asp:Timer runat="server" ID="Timer1" Interval="500" Enabled="false"  />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
        <ContentTemplate>
            <br />
        <div class='col-lg-12'>
            <br />
        <div class='panel panel-default'>
            <br />
            <div class='panel-heading'>
                Ajouter un Nouveau Client
            </div>
                <div class='panel-body'>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="form-group">
                                <asp:TextBox ID="txtPrenom" runat="server"  class="form-control" placeholder="Entrer les Prénoms" MaxLength="40"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtNom" runat="server"  class="form-control" placeholder="Entrer le Nom de Famille" MaxLength="40"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtAdresseRue" runat="server"  class="form-control" placeholder="Entrer La Rue et le Numéro"  MaxLength="48"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtAdresseExtra" runat="server"  class="form-control" placeholder="Adresse Extra" MaxLength="48"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtVille" runat="server"  class="form-control" placeholder="Ville" MaxLength="48"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtPays" runat="server"  class="form-control" placeholder="Pays - Haiti par default si laissé vide" MaxLength="30"></asp:TextBox>
                            </div>
                        </div>
                        <!-- /.col-lg-4 (nested) -->
                        <div class="col-lg-4">
                            <div class="form-group">
                                <asp:TextBox ID="txtEmail" runat="server"  class="form-control" placeholder="Entrer l'Adresse Email" TextMode="Email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtDDN" runat="server"  class="form-control" placeholder="Entrer la Date de Naissance" TextMode="Date" ToolTip="mm/jj/aaaa"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtTelephone1" runat="server"  class="form-control" placeholder="Entrer le # de téléphone principal" TextMode="Phone"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtTelephone2" runat="server"  class="form-control" placeholder="Autre # de téléphone" TextMode="Phone"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtTelephone3" runat="server"  class="form-control" placeholder="Autre # de téléphone" TextMode="Phone"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtNIF" runat="server"  class="form-control" placeholder="Entrer le # du NIF ou Matricule Fiscale" MaxLength="48"></asp:TextBox>
                            </div>

                        </div>
                        <!-- /.col-lg-4 (nested) -->
                        <!-- /.col-lg-4 (nested) -->
                        <div class="col-lg-4">
                            <div class="form-group">
                                <asp:RadioButtonList ID="rblAdminOuClient" runat="server">
                                    <asp:ListItem Text="Staff" Value ="Staff"></asp:ListItem>
                                    <asp:ListItem Text="Client" Value ="Client" Selected="true"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group">
                                <label>Remarque</label>                       
                                <asp:TextBox ID="txtRemarque" runat="server"  class="form-control" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <!-- /.col-lg-4 (nested) -->
                    </div>
                    <!-- /.row (nested) -->                                            
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label> 
                            </div>
                        </div>
                        <!-- /.col-lg-6 (nested) -->
                    </div>
                    <!-- /.row (nested) -->
                    <div class="row">
                        <div class="col-lg-2">                                
                            <asp:Button ID="btnSauvegarder" runat="server" Width="140" Height="50px" Text="Sauvegarder" class="btn btn-outline btn-primary" />
                        </div>
                        <div class="col-lg-2">
                            <asp:Button ID="btnCancel" runat="server" Width="140" Height="50px" Text="Cancel" class="btn btn-outline btn-default" />
                        </div>
                        <!-- /.col-lg-6 (nested) -->
                    </div>                  
                </div>
        </div>
    </div>
  </ContentTemplate>
  </asp:UpdatePanel>
</asp:Content>

