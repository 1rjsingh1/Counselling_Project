<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="seata.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style136 {
            width: 100%;
        }
        .auto-style137 {
            text-align: center;
        }
        .auto-style138 {
            width: 696px;
            height: 133px;
            position: absolute;
            top: 190px;
            left: 378px;
            z-index: 1;
        }
        .auto-style139 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style136">
        <tr>
            <td class="auto-style137">&nbsp;</td>
            <td class="auto-style137">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style137"><strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style135" Text="Select a College"></asp:Label>
&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="InstName" DataValueField="InstCode">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="SELECT [InstCode], [InstName] FROM [Institutes]"></asp:SqlDataSource>
                </strong></td>
            <td class="auto-style137">
                <div class="auto-style139">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" Text="Councelling Round"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="CounNo" DataValueField="CounNo">
                </asp:DropDownList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="SELECT DISTINCT [CounNo] FROM [CatWiseSeats]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div class="auto-style139">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style138" DataSourceID="SqlDataSource2" Font-Size="Medium">
                        
                        <Columns>
                            <asp:BoundField DataField="StreamName" HeaderText="StreamName" SortExpression="StreamName" />
                            <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
                            <asp:BoundField DataField="TSeats" HeaderText="TSeats" SortExpression="TSeats" />
                            <asp:BoundField DataField="Balanced Seats" HeaderText="Balanced Seats" ReadOnly="True" SortExpression="Balanced Seats" />
                        </Columns>
                    </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="seatsfromin" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="instcode" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="cno" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>



