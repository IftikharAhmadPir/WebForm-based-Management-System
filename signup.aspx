<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="HealthCare.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #login {
            //background-color:aliceblue;
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
        .myButton {
	background-color:black;
	-moz-border-radius:28px;
	-webkit-border-radius:28px;
	border-radius:28px;
	border:1px solid #4e6096;
	display:inline-block;
	cursor:pointer;
	color:white;
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
    <center>
        <form runat="server">
        <h1><b>Register Admin</b></h1>
            &nbsp
            <table id="login">
            
            <tr>
                <td>
                    ID:
                </td>
                <td>
                    <asp:TextBox ID="txt_id" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td>
                    EMAIL:
                </td>
                <td>
                    <asp:TextBox ID="txt_email" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td>
                    PASSWORD:
                </td>
                <td>
                    <asp:TextBox ID="txt_password" type="password" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td>
                    REPEAT PASSWORD:
                </td>
                <td>
                    <asp:TextBox ID="txt_rpassword" type="password" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td>
                    RECOVERY CODE:
                </td>
                <td>
                    <asp:TextBox ID="txt_rcode" type="password"  runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
                 &nbsp
            <tr>
               
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="REGISTER" OnClick="Button1_Click"></asp:Button>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_result" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
            </form>
    </center>
</asp:Content>
