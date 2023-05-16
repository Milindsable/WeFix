<%@ Page Title="" Language="C#" MasterPageFile="~/masterContractor.Master" AutoEventWireup="true" CodeBehind="Contractor_feedback.aspx.cs" Inherits="WeFix.Contractor_feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dlCustomers" runat="server" RepeatColumns = "3" CellSpacing = "3" RepeatLayout = "Table">
    <ItemTemplate>
        <table class = "table">
            <tr>
                <th colspan="2">
                    <b><%# Eval("username") %></b>
                </th>
            </tr>
            <tr>
                <td>
                    <%# Eval("feedtext")%>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
