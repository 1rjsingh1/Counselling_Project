<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="showpreferences.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style137 {
        margin-left: 230px;
        margin-top: 100px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style137" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Large" Height="156px" Width="656px">
    <Columns>
        <asp:BoundField DataField="PrefNo" HeaderText="PrefNo" SortExpression="PrefNo" />
        <asp:BoundField DataField="InstName" HeaderText="InstName" SortExpression="InstName" />
        <asp:BoundField DataField="StreamName" HeaderText="StreamName" SortExpression="StreamName" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="showpref" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:SessionParameter Name="roll" SessionField="User" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>


