<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <title></title>
    <style type="text/css">
        #Button1{
            border-radius: 8px;
        }
        #Button2{
            border-radius: 8px;
        }
       
        .auto-style3 {
            font-size: large;
            height: 26px;
            width: 345px;
        }
        .auto-style5 {
            height: 26px;
            width: 159px;
        }
        .auto-style6 {
            text-align: center;
            width: 159px;
        }
        .auto-style7 {
            width: 339px;
        }
        body {
    background-image:url('Back.png');
    background-repeat:no-repeat;
  background-size: 300px 400px;
    background-position: center; 
}
        .auto-style9 {
            width: 159px;
        }
        .auto-style10 {
            width: 339px;
            height: 10px;
        }
        .auto-style11 {
            width: 159px;
            height: 10px;
        }
        .auto-style12 {
            position: absolute;
            top: 542px;
            left: 10px;
            z-index: 1;
        }
        .auto-style13 {
            width: 171px;
        }
        .auto-style14 {
            height: 26px;
            width: 171px;
        }
        .auto-style15 {
            text-align: left;
            width: 171px;
        }
        .auto-style16 {
            width: 171px;
            height: 10px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
       
        
    <div class="container" >
    <div class="jumbotron" style=" opacity: 0.8;  border: 1px solid white;
  margin-top:25px;">
      <h2>
          <asp:Image ID="Image1" runat="server" ImageUrl="~/jossa_logo.png" />
          <strong>Welcome, Please Enter your Details</strong></h2><br>
      <h4 ><strong>Remember</strong> ::Never share your password and do not respond to any mail which asks you for your Login-ID/Password. NIC does not request for such information by email.</h4><br/>
        </div>
        </div>

        
        <p>
        </p>
        <table class="auto-style1" style="margin-left:20%;">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr style="margin-left:auto; margin-right:auto">
                <td class="auto-style3" style="text-align: right; font-weight: 700;">Roll-Number:&nbsp;&nbsp;&nbsp; </td>
                <td style="text-align: left" class="auto-style14">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1"  runat="server" style="opacity: 0.8; text-align: center;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="#CC0000" Font-Italic="True" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                </td>
                <td style="text-align: left" class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; font-weight: 700; font-size: large" class="auto-style7">Password:&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style15">&nbsp;&nbsp;
                    <asp:TextBox ID="login_pass" style=" opacity: 0.8; text-align: center;" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="login_pass" ErrorMessage="*Required" ForeColor="#CC0000" Font-Italic="True" Font-Size="XX-Small" style="position: relative"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" Font-Size="X-Small" Font-Underline="True" NavigateUrl="~/forgotpass.aspx">Forgot Password</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="auto-style10"></td>
                <td style="text-align: center" class="auto-style16"></td>
                <td style="text-align: center" class="auto-style11"></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   
                </td>
                <td style="text-align: center" class="auto-style13">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button Style="margin-left: 35%" ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCFFFF" Text="Login" BackColor="#0099FF" Height="40px" Width="92px" />
                &nbsp;
               
                    &nbsp;</td>
                <td style="text-align: center" class="auto-style9">
                    &nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
                    <asp:Button Style="margin-left: 35%" ID="Button2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCFFFF" Text="Sign Up" BackColor="#0099FF" Height="40px" Width="92px" PostBackUrl="~/Regiter.aspx" CausesValidation="False" CssClass="auto-style12" />
               
                </p>
    </form>
</body>
</html>
