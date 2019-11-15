<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="recover.aspx.cs" Inherits="HealthCare.recover" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .iftikhar{
            color:red;
                }

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
.iftikhar1{
    border:2px solid #456879;
	border-radius:10px;
	height: 30px;
	width: 230px;
   
}
    </style>
    <center>
        <form runat="server">
            <table id="login">
                <tr>
                    <th>
                        Recovery Code?
                    </th>
                    <td>
                        <asp:TextBox ID="txt_code" type="password" runat="server" CssClass="iftikhar1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txt_code" EnableClientScript="false" CssClass="required" runat="server" SetFocusOnError="true" ErrorMessage="CODE is required!!!"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btn_recovery" CssClass="myButton" runat="server" Text="RECOVER" OnClick="btn_recovery_Click"></asp:Button>
                    </td>
                    
                </tr>
                <tr>
                    
                        <td>
                        <center><asp:Label ID="lbl_code" CssClass="iftikhar" runat="server" Text=""></asp:Label> <asp:Label ID="Label1" CssClass="iftikhar" runat="server" Text="Is the Password!!!"></asp:Label>
                        </center></td>
                </tr>
            </table>
        </form>
    </center>
</asp:Content>
