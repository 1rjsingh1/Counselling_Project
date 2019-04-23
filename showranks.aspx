<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="showranks.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style136 {
        width: 558px;
        height: 173px;
        position: absolute;
        top: 232px;
        left: 474px;
        z-index: 1;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style136" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Large">
    <Columns>
        <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
        <asp:BoundField DataField="CatRank(Mains)" HeaderText="CatRank(Mains)" SortExpression="CatRank(Mains)" />
        <asp:BoundField DataField="CatRank(Adv)" HeaderText="CatRank(Adv)" SortExpression="CatRank(Adv)" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="showranks" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:SessionParameter Name="roll" SessionField="User" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>


