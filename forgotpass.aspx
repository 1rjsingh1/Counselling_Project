<%@ Page Language="VB" AutoEventWireup="false" CodeFile="forgotpass.aspx.vb" Inherits="_Default" %>

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
            width: 339px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 339px;
        }
        .auto-style8 {
            height: 24px;
            width: 339px;
        }
        body {
    background-image:url('Back.png');
    background-repeat:no-repeat;
  background-size: 300px 400px;
    background-position: center; 
}
        .auto-style9 {
            width: 339px;
            font-weight: bold;
            font-size: large;
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
                <td>&nbsp;</td>
            </tr>
            <tr style="margin-left:auto; margin-right:auto">
                <td class="auto-style3" style="text-align: right; font-weight: 700;">Roll-Number:&nbsp;&nbsp;&nbsp; </td>
                <td style="text-align: left" class="auto-style5">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1"  runat="server" style="opacity: 0.8; text-align: center;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="text-align: center"></td>
                <td class="auto-style4" style="text-align: center"></td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style9">Security Question:&nbsp;&nbsp; </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="QuestionText" DataValueField="QuesNo">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="SELECT * FROM [SecurityQuestions]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style9">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style9">Security Answer:</td>
                <td class="auto-style6">&nbsp;&nbsp;
                    <asp:TextBox ID="login_pass" style=" opacity: 0.8; text-align: center;" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="login_pass" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="auto-style7">&nbsp;</td>
                <td style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Button Style="margin-left: 35%" ID="Button1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#CCFFFF" Text="Change Password" BackColor="#0099FF" Height="40px" Width="122px" />
                &nbsp;
               
                    &nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
