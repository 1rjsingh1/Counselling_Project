<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="councelling.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style136 {
        width: 480px;
        height: 133px;
        position: absolute;
        top: 189px;
        left: 505px;
        z-index: 1;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style136" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Large">
    <Columns>
        <asp:BoundField DataField="CNumber" HeaderText="CNumber" SortExpression="CNumber" />
        <asp:BoundField DataField="DateStart" HeaderText="DateStart" SortExpression="DateStart" />
        <asp:BoundField DataField="DateEnd" HeaderText="DateEnd" SortExpression="DateEnd" />
        <asp:BoundField DataField="ResultDate" HeaderText="ResultDate" SortExpression="ResultDate" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="counsch" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>


