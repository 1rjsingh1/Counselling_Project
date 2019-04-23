<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default4.aspx.vb" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style137 {
            width: 100%;
        }
        .auto-style138 {
            width: 481px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="showoption" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <table class="auto-style137">
        <tr>
            <td class="auto-style138">
                <asp:Panel ID="Panel1" runat="server" Height="350px" ScrollBars="Both" Width="502px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:TemplateField HeaderText="InstCode" SortExpression="InstCode">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("InstCode") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("InstCode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="StreamCode" SortExpression="StreamCode">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("StreamCode") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("StreamCode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="InstName" HeaderText="InstName" SortExpression="InstName" />
                            <asp:BoundField DataField="StreamName" HeaderText="StreamName" SortExpression="StreamName" />
                            <asp:TemplateField HeaderText="Select">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox2" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                            <Columns>
                                <asp:BoundField DataField="InstCode" HeaderText="InstCode" SortExpression="InstCode" />
                                <asp:BoundField DataField="PrefNo" HeaderText="PrefNo" SortExpression="PrefNo" />
                                <asp:BoundField DataField="StreamCode" HeaderText="StreamCode" SortExpression="StreamCode" />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="SELECT [InstCode], [PrefNo], [StreamCode] FROM [StudPref] WHERE ([RollNo] = @RollNo)">
                        <SelectParameters>
                            <asp:SessionParameter Name="RollNo" SessionField="User" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style138">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style138">
    <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <table id="albums"  class="auto-style4" style="margin-left :100px; background-color :#dbdcdd;">
                <tr style="border-width:0px; margin:0px">
                    <td class="auto-style133" style=" margin:0px"  colspan="1" rowspan="1">
                        Impotant_Links</td>
                </tr>
                <tr style="margin:0px;">
                    <td class="auto-style8" style=" margin:0px">
                        <em><strong>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/Home.aspx">-&gt;Preferences</asp:HyperLink>
                        </strong></em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" >
                        <em><strong>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/Home.aspx">-&gt;Result</asp:HyperLink>
                        </strong></em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" >
                        <strong><em>
                        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/Home.aspx">-&gt;Personal_Details</asp:HyperLink>
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" >
                        <strong><em>
                        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/Home.aspx">-&gt;Councelling Schedule</asp:HyperLink>
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" >
                        <strong><em>
                        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style6" ForeColor="#6666FF">-&gt;Seat_Matrix</asp:HyperLink>
                        </em></strong>
                    </td>
                </tr>
                </table>
        
        </asp:Content>


