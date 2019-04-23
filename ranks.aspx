<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ranks.aspx.vb" Inherits="Regiter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <title></title>
    
    <style type="text/css">
         #Button2{
            border-radius: 8px;
        }
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            height: 22px;
            font-size: large;
            text-align: right;
            width: 23px;
        }
        .auto-style6 {
            font-size: large;
            height: 25px;
            width: 208px;
        }
        .auto-style7 {
            height: 25px;
        }
        .auto-style8 {
            height: 20px;
            width: 208px;
        }
        .auto-style9 {
            width: 208px;
        }
        .auto-style10 {
            font-size: large;
            width: 208px;
        }
        .auto-style12 {
            width: 248px;
        }
        .auto-style13 {
            font-size: large;
            height: 25px;
            width: 23px;
            text-align: center;
        }
        .auto-style14 {
            font-size: large;
            width: 23px;
            text-align: center;
        }
        .auto-style15 {
            height: 22px;
            font-size: large;
            text-align: left;
            width: 208px;
        }
        .auto-style18 {
            height: 20px;
            width: 23px;
        }
        .auto-style20 {
            font-size: large;
            width: 23px;
        }
        .auto-style21 {
            width: 23px;
        }
        .auto-style22 {
            width: 100%;
            margin-left: 156px;
        }
        .auto-style23 {
            width: 100%;
            margin-left: 155px;
        }
        body {
    background-image:url('Back.png');
    background-repeat:no-repeat;
  background-size: 300px 400px;
    background-position: center; 
}
        .auto-style24 {
            font-weight: bold;
        }
        .auto-style25 {
            width: 248px;
            height: 20px;
        }
        .auto-style26 {
            padding:3px;
            position: absolute;
            top: 319px;
            left: 834px;
            z-index: 1;
            width: 215px;
            height: 279px;
        }
        .auto-style28 {
            font-size: large;
            width: 23px;
            text-align: center;
            height: 35px;
        }
        .auto-style29 {
            font-size: large;
            width: 208px;
            height: 35px;
        }
        .auto-style30 {
            height: 35px;
        }
        .auto-style31 {
            font-size: large;
            width: 23px;
            height: 35px;
        }
    </style>
    
</head>
<body >
    
    <div>
    <form id="form2" style="margin-left:100px;" runat="server">
        <div class="container" style="margin-left :0px;" >
    <div class="jumbotron" style=" opacity: 0.8; border: 1px solid white;
  margin-top:25px; margin-left:0px">
      <h2>
          <asp:Image ID="Image1" runat="server" ImageUrl="~/jossa_logo.png" />
          <strong>Registration Page</strong></h2><br/>
      <h4 ><strong>Welcome, Please Enter your Details</strong></h4>
        </div>
        </div>

        
        
    
   <div class="container" style="margin-left :0px;" >
    <table class="auto-style22">
        <tr>
            <td class="auto-style4">
            </td>
            <td class="auto-style15">
                <strong>JEE Mains:</strong></td>
            <td class="auto-style1">
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <ul>
                    <li class="text-right"></li>
                </ul>
            </td>
            <td class="auto-style15">
                Open Rank-</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" style=" opacity: 0.8;" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style26" BorderStyle="Solid" >
                    <h2 style="color:red">Important**:</h2><br />
                    <p style="font-weight:bolder ; font-size:larger">Don't fill any wrong information which may lead to your expulsion from the counselling. Also you will not be allowed to take part in any further councelling held by JOSAA.</p>
                </asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style8"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style13">
                <ul>
                    <li class="text-right"></li>
                </ul>
            </td>
            <td class="auto-style6">
                SC Rank-</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" style=" opacity: 0.8;" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">
                <ul>
                    <li class="text-right"></li>
                </ul>
            </td>
            <td class="auto-style29">
                ST Rank-</td>
            <td class="auto-style30">
                <asp:TextBox ID="TextBox3"  style=" opacity: 0.8;" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">
                <p>
                    &nbsp;</p>
            </td>
            <td class="auto-style29">
                <strong>J</strong><span class="auto-style24">EE Advance:</span></td>
            <td class="auto-style30">
                </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                <ul>
                    <li class="text-right"></li>
                </ul>
            </td>
            <td class="auto-style10">
                Open Rank-</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" style=" opacity: 0.8;" Width="119px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">
                <ul>
                    <li class="text-right"></li>
                </ul>
            </td>
            <td class="auto-style10">
                SC Rank-</td>
            <td>
                <asp:TextBox ID="TextBox6" style=" opacity: 0.8;" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">
                <ul>
                    <li></li>
                </ul>
            </td>
            <td class="auto-style10">
                ST Rank-</td>
            <td>
                <asp:TextBox ID="TextBox10" style=" opacity: 0.8;" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style23">
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style25"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style21">
            
       
                &nbsp;</td>
            <td class="auto-style12">
            
       
            <div class="auto-style2" style="margin-left :100px;" >
       
                <asp:Button Style="margin-left: 35%" ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCFFFF" Text="Submit" BackColor="#0099FF" Height="40px" Width="92px" />
              
                </div>
       
    

            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
            
       

       </div>
   </form>
       </div>
</body>
</html>
