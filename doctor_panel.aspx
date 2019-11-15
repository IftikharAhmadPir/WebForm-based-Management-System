<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="doctor_panel.aspx.cs" Inherits="HealthCare.doctor_panel" %>
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
.iftikhar{
    border:2px solid #456879;
	border-radius:10px;
	height: 30px;
	width: 230px;
   
}

    </style>
    <form runat="server">
        <center>
            <h1><b>Doctor Panel</b></h1>
            <table id="login">
                <tr>
                    <td colspan="2">
                        ID:
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txt_id" runat="server" CssClass="iftikhar"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Name:
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txt_name" runat="server" CssClass="iftikhar"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Qualification:
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txt_qualification" runat="server" CssClass="iftikhar"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Speclization:
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddl_speclization" runat="server" CssClass="iftikhar">
                            <asp:ListItem>Eye Speclist</asp:ListItem>
                            <asp:ListItem>Heart Speclist</asp:ListItem>
                            <asp:ListItem>Bone Speclist</asp:ListItem>
                            <asp:ListItem>Liver Speclist</asp:ListItem>
                            <asp:ListItem>Kidney Speclist</asp:ListItem>
                            <asp:ListItem>Skin Speclist</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Address:
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txt_address" runat="server" CssClass="iftikhar"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Location:
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddl_location" runat="server" OnSelectedIndexChanged="ddl_location_SelectedIndexChanged" CssClass="iftikhar">
                            <asp:ListItem>Rawalpindi</asp:ListItem>
                            <asp:ListItem>Islamabad</asp:ListItem>
                            <asp:ListItem>Lahore</asp:ListItem>
                            <asp:ListItem>Karachi</asp:ListItem>
                            <asp:ListItem>Faisalabad</asp:ListItem>
                            <asp:ListItem>Peshawar</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" CssClass="myButton" runat="server" Text="INSERT" OnClick="Button1_Click"></asp:Button>
                    </td>
                    <td>
                        <asp:Button ID="Button2" CssClass="myButton" runat="server" Text="SEARCH" OnClick="Button2_Click"></asp:Button>
                    </td>
                    <td>
                        <asp:Button ID="Button3" CssClass="myButton" runat="server" Text="UPDATE" OnClick="Button3_Click"></asp:Button>
                    </td>
                    <td>
                        <asp:Button ID="Button4" CssClass="myButton" runat="server" Text="DELETE" OnClick="Button4_Click"></asp:Button>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lbl_result" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </center>
    </form>
</asp:Content>
