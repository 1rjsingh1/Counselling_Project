<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="uploadimage.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <script type="text/javascript">
        function previewFile() {
            var preview = document.querySelector('#<%=Image2.ClientID %>');
            var file = document.querySelector('#<%=FileUpload1.ClientID %>').files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "~/dummy-profile.png";
            }
        }
    </script>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Size="Small" ForeColor="#990099" Text="***Upload an image of 108x116 px and size must be &lt; 1 mb"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:FileUpload ID="FileUpload1" onchange="previewFile()" runat="server" />
<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
<asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large">Preview</asp:Label>
<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image2" runat="server" Height="108px" Width="116px" />
&nbsp;
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
 