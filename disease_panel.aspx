<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="disease_panel.aspx.cs" Inherits="HealthCare.disease" %>
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
        .required{
            color:red;
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
        .auto-style1 {
            height: 36px;
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
    &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        <table id="login">
            <h1><b>Disease Panel</b></h1>
        <tr>
            <td>
                &nbsp
                &nbsp
            </td>
        </tr>
            <tr>
           <th colspan="2">
                ID:
            </th>
            <td>
                <asp:TextBox ID="txt_id" runat="server" CssClass="iftikhar"></asp:TextBox>
            </td>
        </tr>
    <tr>
            <th colspan="2">
                DISEASE NAME:
            </th>
            <td>
                <asp:TextBox ID="txt_name" runat="server" CssClass="iftikhar"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th colspan="2">
                SYMPTOMS:
            </th>
            <td>
                <asp:TextBox ID="txt_symptoms" runat="server" Height="66px" Width="192px" CssClass="iftikhar"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th colspan="2">
                MEDICINE:
            </th>
            <td>
                <asp:TextBox ID="txt_medicine" runat="server" CssClass="iftikhar"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th colspan="2">
                DISEASE INFO:
            </th>
            <td>
                <asp:TextBox ID="txt_info" runat="server" Height="147px" Width="227px" CssClass="iftikhar"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th colspan="2" class="auto-style1">
                PRESCRIBED DOCTOR:
            </th>
            <td class="auto-style1">
                <asp:TextBox ID="txt_doctor" runat="server" CssClass="iftikhar"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="INSERT" OnClick="Button1_Click"></asp:Button>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" CssClass="myButton" Text="SEARCH" OnClick="Button2_Click"></asp:Button>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" CssClass="myButton" Text="DELETE" OnClick="Button3_Click"></asp:Button>
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" CssClass="myButton" Text="UPDATE" OnClick="Button4_Click"></asp:Button>
            </td>
        </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_result" runat="server" Text=""></asp:Label>
                </td>
            </tr>
    </table>
        </form>
</center>


</asp:Content>
