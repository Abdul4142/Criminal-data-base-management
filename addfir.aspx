<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addfir.aspx.cs" Inherits="addfir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <h2> Add New FIR Details</h2>
    <br/>
    <table>
    <tr>
    <td>
        District&nbsp; : 
    </td>
    <td>
        <asp:DropDownList ID="DrpDist" runat="server">
            <asp:ListItem>Gulbarga</asp:ListItem>
            <asp:ListItem>Bidar</asp:ListItem>
            <asp:ListItem>Raichur</asp:ListItem>
            <asp:ListItem>Yadgir</asp:ListItem>
            <asp:ListItem>Koppal</asp:ListItem>
            <asp:ListItem>Mysore</asp:ListItem>
            <asp:ListItem>Bangalore</asp:ListItem>
            <asp:ListItem>Mandya</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
   
    
    <tr>
    <td>
        Police Station :  
    </td>
    <td>
        <asp:DropDownList ID="DrpPolice" runat="server">
        </asp:DropDownList>
    </td>
    </tr>
    
         <tr>
    <td>
        FIR Date :
    </td>
    <td>
        <asp:TextBox ID="txtfirDate" runat="server"  size="30"></asp:TextBox>
      
    </td>
    </tr>
             <tr>
    <td>
        FIR No :
    </td>
    <td>
        <asp:TextBox ID="txtFIRNo" runat="server"  size="30"></asp:TextBox>
      
    </td>
    </tr>
             <tr>
    <td>
        FIR Desc :
    </td>
    <td>
   
       <asp:TextBox ID="txtFirDesc" runat="server"  TextMode="MultiLine" Rows="5" Columns ="30"></asp:TextBox>
    </td>
    </tr>
    </table>
    
    <p />
    <asp:Button ID="btnAdd" runat="server" Text="Save FIR Details" 
            onclick="btnAdd_Click" />
    <p />
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
</asp:Content>

