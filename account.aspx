<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="HealthCare.account" %>
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
       <h1><b>Account Panel</b></h1>
             <table id="login">
            <tr>
                <th>
                    ID:
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txt_id" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <th>
                    EMAIL:
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txt_email" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <th>
                    PASSWORD:
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txt_password" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <th>
                    REPEAT PASSWORD:
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txt_rpassword" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <th>
                    RECOVERY CODE:
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txt_rcode" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
            
            </br>

           <tr>
               
               <td>
                   <asp:Button ID="Button2" runat="server" CssClass="myButton" Text="SEARCH" OnClick="Button2_Click"></asp:Button>
               </td>
               <td>
                   <asp:Button ID="Button3" runat="server" CssClass="myButton" Text="UPDATE" OnClick="Button3_Click"></asp:Button>
               </td>
               <td>
                   <asp:Button ID="Button4" runat="server" CssClass="myButton" Text="DELETE" OnClick="Button4_Click"></asp:Button>
               </td>
           </tr>
                 <tr>
                     <td><asp:Label ID="lbl_result" runat="server" Text=""></asp:Label> </td>
                 </tr>
        </table>
            </form>
    </center>
</asp:Content>
