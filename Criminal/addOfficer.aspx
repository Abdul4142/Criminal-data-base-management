<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addOfficer.aspx.cs" Inherits="addOfficer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <h2> Add New Officer&#39;s Detail</h2>
    <br/>
    <table>
         <tr>
    <td>
        Officer ID &nbsp; : 
    </td>
    <td>
        <asp:TextBox ID="txtoffID" runat="server"  size="30"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
        Officer Name&nbsp; : 
    </td>
    <td>
        <asp:TextBox ID="txtoffName" runat="server"  size="30"></asp:TextBox>
    </td>
    </tr>
   
    
    <tr>
    <td>
        Designation&nbsp; :  
    </td>
    <td>
        <asp:DropDownList ID="drpoffdeg" runat="server">
            <asp:ListItem>General Crime</asp:ListItem>
            <asp:ListItem>Murder Case Officer</asp:ListItem>
            <asp:ListItem>senior officer</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    
         <tr>
    <td>
        Remarks
    </td>
    <td>
        <asp:TextBox ID="txtremaks" runat="server"  size="30"></asp:TextBox>
      
    </td>
    </tr>
    </table>
    
    <p />
    <asp:Button ID="btnAdd" runat="server" Text="Save Officer Details" 
            onclick="btnAdd_Click" />
    <p />
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
</asp:Content>

