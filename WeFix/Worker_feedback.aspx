<%@ Page Title="" Language="C#" MasterPageFile="~/Worker_master.Master" AutoEventWireup="true" CodeBehind="Worker_feedback.aspx.cs" Inherits="WeFix.Worker_feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .table
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
            width: 200px;
            font-family: Arial;
            font-size: 10pt;
        }
        .table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        .table th, .table td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
        .main{
            margin-top:100px;
            margin-left:150px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
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
    </div>
</asp:Content>
