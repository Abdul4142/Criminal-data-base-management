<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addstation.aspx.cs" Inherits="addstation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <h2> Add New Police Station Details</h2>
    <br/>
    <table>
    <tr>
    <td>
        Enter Police Station Name&nbsp; : 
    </td>
    <td>
        <asp:TextBox ID="txtstation" runat="server"  size="30"></asp:TextBox>
    </td>
    </tr>
   
    
    <tr>
    <td>
    Station Location :  
    </td>
    <td>
        <asp:TextBox ID="txtlocation" runat="server"  TextMode="MultiLine" Rows="5" Columns ="30"></asp:TextBox>
    </td>
    </tr>
    
         <tr>
    <td>
      Station Incharge
    </td>
    <td>
        <asp:TextBox ID="txtincharge" runat="server"  size="30"></asp:TextBox>
      
    </td>
    </tr>
    </table>
    
    <p />
    <asp:Button ID="btnAdd" runat="server" Text="Save Station Details" 
            onclick="btnAdd_Click" />
    <p />
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
</asp:Content>

