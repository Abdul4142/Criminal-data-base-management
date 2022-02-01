<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addcriminal.aspx.cs" Inherits="addcriminal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2> Add Criminal Details</h2>
    <br/>
    <table>
    <tr>
    <td>
        Select FIR No : 
    </td>
    <td>
        <asp:DropDownList ID="drpfir" runat="server" Height="16px" Width="180px">
        </asp:DropDownList>
    </td>
    </tr>
    
      
   <tr>
    <td>
    &nbsp;Name : 
    </td>
    <td>
        <asp:TextBox ID="txtName" runat="server"  size="30"></asp:TextBox>
      
    </td>
    </tr>

     <tr>
    <td>
        Age : 
    </td>
    <td>
        <asp:TextBox ID="txtAge" runat="server"  size="30"></asp:TextBox>
      
    </td>
    </tr>

    <tr>
    <td>
        Gender :  
    </td>
    <td>
       
        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="G1" Text="Male" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="G1" Text="Female" />
       
    </td>
    </tr>
    <tr>
    <td>
    Crime Date :  
    </td>
    <td>
        <asp:TextBox ID="txtdatecrime" runat="server"  size="30"></asp:TextBox>
        (yyyy-mm-dd)</td>
    </tr>
    <tr>
    <td>
    Crime Desc :  
    </td>
    <td>
        <asp:TextBox ID="txtCrime" runat="server"  TextMode="MultiLine" Rows="5" Columns ="30"></asp:TextBox>
    </td>
    </tr>
     <tr>
    <td>
   Allocated Officer :  
    </td>
    <td>
        <asp:DropDownList ID="drpallo" runat="server"></asp:DropDownList>
    </td>
    </tr>
    
       <tr>
    <td>
       Address : 
    </td>
    <td>
         <asp:TextBox ID="txtAddress" runat="server"  TextMode="MultiLine" Rows="5" Columns ="30"></asp:TextBox>
      
    </td>
    </tr>
     <tr>
    <td>
       Mobile :
    </td>
    <td>
        <asp:TextBox ID="txtMbl" runat="server"  size="30"></asp:TextBox>
      
    </td>
    </tr>
    </table>
    
    <p />
    <asp:Button ID="btnAdd" runat="server" Text="Save Crime Details" 
            onclick="btnAdd_Click" />
    <p />
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
</asp:Content>

