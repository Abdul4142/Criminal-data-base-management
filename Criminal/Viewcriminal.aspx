<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Viewcriminal.aspx.cs" Inherits="Viewcriminal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table>
        <tr>
            <td>Enter Mobile No : </td>
            <td>        <asp:TextBox ID="txtmobile" runat="server"  size="30"></asp:TextBox>
      
    </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search Details" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

  <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None" Height="100px" Width="900px">
          <AlternatingRowStyle BackColor="White" />
          <EditRowStyle BackColor="#2461BF" />
          <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#EFF3FB" />
          <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F5F7FB" />
          <SortedAscendingHeaderStyle BackColor="#6D95E1" />
          <SortedDescendingCellStyle BackColor="#E9EBEF" />
          <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>

