<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="result.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style136 {
            width: 100%;
        }
        .auto-style137 {
            text-align: center;
        }
    .auto-style138 {
        margin-left: 136px;
    }
    .auto-style139 {
        text-align: center;
        height: 75px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style138" Width="688px">
        <Columns>
            <asp:BoundField DataField="CouncelNumber" HeaderText="CouncelNumber" SortExpression="CouncelNumber" />
            <asp:BoundField DataField="StreamName" HeaderText="StreamName" SortExpression="StreamName" />
            <asp:BoundField DataField="InstName" HeaderText="InstName" SortExpression="InstName" />
            <asp:BoundField DataField="PreferenceAlloted" HeaderText="PreferenceAlloted" SortExpression="PreferenceAlloted" />
            <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
        </Columns>
    </asp:GridView>
    <table class="auto-style136">
        <tr>
            <td class="auto-style137">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="showresult" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter Name="rollno" SessionField="User" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                &nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style137">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style139">
                </td>
        </tr>
    </table>
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
                        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/Home.aspx">-&gt;Home</asp:HyperLink>
                        </strong></em>
                    </td>
                </tr>
                <tr style="margin:0px;">
                    <td class="auto-style8" style=" margin:0px">
                        <em><strong>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/Preferences.aspx">-&gt;Preferences</asp:HyperLink>
                        </strong></em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" >
                        <em><strong>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/result.aspx">-&gt;Result</asp:HyperLink>
                        </strong></em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" >
                        <strong><em>
                        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/personal.aspx">-&gt;Personal_Details</asp:HyperLink>
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" >
                        <strong><em>
                        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/councelling.aspx">-&gt;Councelling Schedule</asp:HyperLink>
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" >
                        <strong><em>
                        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/seata.aspx">-&gt;Seat_Matrix</asp:HyperLink>
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" >
                        <strong><em>
                        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/ranks.aspx">-&gt;Ranks</asp:HyperLink>
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" >
                        <strong><em>
                        <asp:HyperLink ID="HyperLink8" runat="server" CssClass="auto-style6" ForeColor="#6666FF" NavigateUrl="~/changepass.aspx">-&gt;Change Password</asp:HyperLink>
                        </em></strong>
                    </td>
                </tr>
                </table>
        
        </asp:Content>



