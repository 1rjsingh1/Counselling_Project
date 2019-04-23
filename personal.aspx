<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="personal.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style136 {
        width: 50%;
        height: 351px;
        position: absolute;
        top: 152px;
        left: 317px;
        z-index: 1;
    }
    .auto-style137 {
        width: 175px;
    }
    .auto-style138 {
        text-align: left;
    }
    .auto-style139 {
        font-size: x-large;
        text-decoration: underline;
    }
    .auto-style140 {
        width: 175px;
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style136" style="border-color :Black; 
    border-width :1px; border-style :Solid">
    <tr>
        <td class="auto-style137">
            <asp:Image ID="Image2" runat="server" Height="118px" Width="106px" />
            &nbsp;
            <asp:HyperLink ID="HyperLink9" runat="server" ImageHeight="25px" ImageUrl="~/edit.png" ImageWidth="25px" NavigateUrl="~/uploadimage.aspx"></asp:HyperLink>
        </td>
        <td class="auto-style138"><strong><span class="auto-style139">PERSONAL DETAILS</span></strong></td>
    </tr>
    <tr style="border-width :1px;">
        <td class="auto-style137">
            <ul>
                <li class="auto-style135">Roll No </li>
            </ul>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" CssClass="auto-style135" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style137">
            <ul>
                <li class="auto-style135">Name</li>
            </ul>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" CssClass="auto-style135" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style137">
            <ul>
                <li class="auto-style135">Father&#39;s Name</li>
            </ul>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" CssClass="auto-style135" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style137">
            <ul>
                <li class="auto-style135">Mobile No</li>
            </ul>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" CssClass="auto-style135" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style137">
            <ul>
                <li class="auto-style135">D.O.B</li>
            </ul>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" CssClass="auto-style135" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style137">
            <ul>
                <li class="auto-style135">Open Rank(Mains)</li>
            </ul>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" CssClass="auto-style135" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style137">
            <ul>
                <li class="auto-style135">SC Rank(Mains)</li>
            </ul>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" CssClass="auto-style135" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style140">
            <ul>
                <li class="auto-style135">ST Rank(Mains)</li>
            </ul>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" CssClass="auto-style135" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style137">
            <ul>
                <li class="auto-style135">Open Rank(Adv.)</li>
            </ul>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" CssClass="auto-style135" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style137">
            <ul>
                <li class="auto-style135">SC Rank</li>
            </ul>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" CssClass="auto-style135" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style140">
            <ul>
                <li class="auto-style135">ST Rank</li>
            </ul>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" CssClass="auto-style135" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style137">&nbsp;</td>
        <td>&nbsp;</td>
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




