<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="WebForm2.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style136 {
            position: absolute;
            top: 228px;
            left: 548px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Image ID="Image2" runat="server" CssClass="auto-style136" Height="250px" Width="250px" />
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


