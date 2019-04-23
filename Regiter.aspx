<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Regiter.aspx.vb" Inherits="Regiter" %>

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
        .auto-style5 {
            font-size: large;
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
        .auto-style11 {
            height: 20px;
            width: 248px;
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
        .auto-style16 {
            height: 20px;
            width: 23px;
            text-align: center;
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
                <ul>
                    <li class="text-right"></li>
                </ul>
            </td>
            <td class="auto-style15">
                <strong>Roll No-</strong></td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" style=" opacity: 0.8;" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                <strong>Name</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" style=" opacity: 0.8;" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                <strong>Father&#39;s_Name</strong></td>
            <td>
                <asp:TextBox ID="TextBox3"  style=" opacity: 0.8;" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style8"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style14">
                <ul>
                    <li class="text-right"></li>
                </ul>
            </td>
            <td class="auto-style10">
                <strong>Mobile</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" style=" opacity: 0.8;" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                <strong>Address</strong></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" style=" opacity: 0.8;" TextMode="MultiLine" Width="172px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                <strong>City</strong></td>
            <td>
                <asp:TextBox ID="TextBox6" style=" opacity: 0.8;" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <table class="auto-style23">
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style11"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style21">
                <ul>
                    <li class="text-right"></li>
                </ul>
            </td>
            <td class="auto-style12">
                &nbsp;&nbsp; <strong><span class="auto-style5">State</span></strong></td>
            <td>
                <asp:DropDownList ID="DropDownList2" style=" opacity: 0.8;" runat="server" DataSourceID="SqlDataSource2" DataTextField="State" DataValueField="State">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="SELECT [State] FROM [States]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">
                <ul>
                    <li class="text-right"></li>
                </ul>
            </td>
            <td class="auto-style12">
                &nbsp;&nbsp; <strong><span class="auto-style5">Date Of Birth</span></strong></td>
            <td>
                <asp:TextBox ID="TextBox8" style=" opacity: 0.8;" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="Small" ForeColor="#CC0000" Text="Your password will be yyyy-mm-dd initially. You can change it later."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">
                <ul>
                    <li class="text-right"></li>
                </ul>
            </td>
            <td class="auto-style12">
                &nbsp;&nbsp; <strong><span class="auto-style5">Security Question</span></strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" style=" opacity: 0.8;" runat="server" DataSourceID="SqlDataSource1" DataTextField="QuestionText" DataValueField="QuestionText">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="SELECT [QuestionText] FROM [SecurityQuestions]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">
                <ul>
                    <li class="text-right"></li>
                </ul>
            </td>
            <td class="auto-style12">
                &nbsp;&nbsp; <strong><span class="auto-style5">Security Answer</span></strong></td>
            <td>
                <asp:TextBox ID="TextBox10" style=" opacity: 0.8;" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox10" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
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
