<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Medicaments.aspx.cs" Inherits="ProjetFinalInfo.Medicaments" %>
<%@ Register Assembly="AjaxControlToolkit" nameSpace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/formItems.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="toolkit" runat="server"></asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>

            <div class='col-lg-12'>
         <div class='panel panel-default'>
             <div class='panel-heading'>
              Ajoutez une nouvelle description sur les medicaments
                 </div>
             <div class='panel body'>
            <div class="row">
                <div class="col-gl-4">
                  <div class="form-group">
                      <asp:TextBox ID="txtLC_medicament" runat="server" class="form-control" placeholder=" Decrivez le(s) type de medicament" MaxLength="45" ToolTip="Yon Ezamp OK !!!!"></asp:TextBox>
                     <br />
               </div>  
             </div>  
                <div class="col-lg-6">
                    <div class="form-group">
                       <p><b>Choisissez le label a modifier</b><asp:CheckBox ID="checkCleanSelection" runat="server" AutoPostBack="True"  />Ou bien Dé-Selectionner Label</p>
                        <asp:ListBox ID="lstLabels2" runat="server" Width="600px" Height="200px" AutoPostBack="True"></asp:ListBox>
                        <br /> 
             
                    </div>
                    <div class="dynamiclabel">
                      <asp:TextBox ID="TextDate" runat="server" placeholder="De cette Date" Font-Zise="Medium" Width="150px" TabIndex="0" AutoPostBack="true"></asp:TextBox>
                        <label for="TextDate">Date-Vous pouvez Cliquer</label> 
                        
                 </div>
                     <div class="row">
                      <div class="col-lg-12">
                         <div class="form-group">
                           <asp:Label ID="lblerror" runat="server" Font-Bold="true" ForeColor="#FF3300"></asp:Label>
                           </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-2">
                            <asp:Button ID="btnSave" runat="server" Width="140" Text="Save" class="btn btn-outline btn-primary"  />
                        </div>
                        <div class="col-lg-2">
                            <asp:Button ID="btnCancel" runat="server" Width="140" Text="Cancel" class="btn btn-outline btn-default" />
                        </div>
                    </div>              
                 </div>
               </div>
            </div>
          </div>
       </div>
</asp:Content>
