<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="HealthCare.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <ul class="nav navbar-nav navbar-right">
					        <li><a href="index.aspx">Medics</a></li>
					        <li><a href="diseas.aspx">Disease</a></li>
					        <li><a href="doctor.aspx">Doctor</a>
					        </li>
					        <li><a href="calculator.aspx">Calculators</a></li>
							<li><a href="quiz.aspx">Quiz's</a></li>
							<li><a href="survey.aspx">Survey</a></li>
							<li class="active"><a href="admin.aspx">ADMIN</a></li>
	 </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        #login {
            background-color:aliceblue;
            padding:5px;
            text-align:center;
            border-radius:25px;
           

        }
        table{
            border-collapse:separate;
            border-radius:25px;
            
        }
        table td{
            padding:6px;
           
        }
        .required{
            color:red;
        }

        .myButton {
	background-color:#7892c2;
	-moz-border-radius:28px;
	-webkit-border-radius:28px;
	border-radius:28px;
	border:1px solid #4e6096;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Georgia;
	font-size:18px;
	font-weight:bold;
	padding:4px 31px;
	text-decoration:none;
	text-shadow:0px 1px 0px #283966;
}
.myButton:hover {
	background-color:#476e9e;
}
.myButton:active {
	position:relative;
	top:1px;
}
.iftikhar{
    border:2px solid #456879;
	border-radius:10px;
	height: 30px;
	width: 230px;
   
}

    </style>
    
    <div id="login">
        <center>
        <h1><b>Admin Login</b></h1>
          <form runat="server">
          <table >
                <tr>
                <td>
                    Log In:
                </td>
                <td>
                    <asp:TextBox ID="txt_id" runat="server" CssClass="iftikhar"></asp:TextBox>
                    
                </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txt_id" EnableClientScript="false" CssClass="required" runat="server" SetFocusOnError="true" ErrorMessage="LOGIN is required!!!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                    <asp:TextBox ID="txt_password" type="password"  runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txt_password" EnableClientScript="false" CssClass="required" SetFocusOnError="true" runat="server" ErrorMessage="PASSWORD is required!!!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <center><asp:Button ID="btn_login" runat="server" CssClass="myButton" Text="SIGN IN" OnClick="btn_login_Click"></asp:Button></center>
                    </br>
                        
                       <center> <asp:Label ID="lbl_ans" CssClass="required" runat="server"></asp:Label> </center>
                </td>
                
            </tr>
              <tr>
                  <td colspan="2">
                    <center><asp:HyperLink ID="HyperLink1" CssClass="required" runat="server" NavigateUrl="recover.aspx">Forget Password?</asp:HyperLink></center>
                </td>
              </tr>
            </table>
          </form>
        </center>
        </br>
            </div>
    
        
</asp:Content>
