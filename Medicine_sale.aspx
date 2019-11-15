<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Medicine_sale.aspx.cs" Inherits="HealthCare.Medicine_index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
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
       <center>
           &nbsp
           &nbsp
           &nbsp
           <h1><b>Medicines Sale</b></h1>
           <table id="login">
            <tr>
                <td colspan="2">
                    ID:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_iid" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    NAME:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_nname" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    SALT:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_ssalt" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    EXPIRY DATE:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_eedate" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    PRICE:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_pprice" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    MANUFACTURER:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_mman" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    QUANTITY:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_qquantity" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td colspan="2">
                    PURCHASING QUANTITY:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_pquantity" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
                </tr>
               
               <tr>
                   <td colspan="2">
                      <center> <asp:Button ID="Button1" CssClass="myButton" runat="server" Text="SEARCH" OnClick="Button1_Click"></asp:Button>
                          </center>
                   </td>
                   <td colspan="2">
                       <center><asp:Button ID="btn_sale" CssClass="myButton" runat="server" Text="SALE" OnClick="btn_sale_Click"></asp:Button>
                           <br />
                           <asp:Label ID="lbl_rresult" runat="server"></asp:Label>
                   </td>
                   
               </tr>
               
                </table>
           </center>
           
        </form>

</asp:Content>
