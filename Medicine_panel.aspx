<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Medicine_panel.aspx.cs" Inherits="HealthCare.Medicine_index" %>
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
      <div id="iftikhar">  <center>
           <h2>&nbsp;</h2>
           <h1><b>Medicines Panel</b></h1>
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
                <td colspan="2" class="auto-style1">
                    NAME:
                </td>
                <td colspan="2" class="auto-style1">
                    <asp:TextBox ID="txt_name" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    SALT:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_salt" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    EXPIRY DATE:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_edate" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    PRICE:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_price" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    MANUFACTURER:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_man" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    QUANTITY:
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_quantity" runat="server" CssClass="iftikhar"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_insert" runat="server" CssClass="myButton" OnClick="btn_insert_Click" Text="INSERT"  />
                </td>
                <td>
                   <asp:Button ID="btn_search" CssClass="myButton" runat="server" Text="SEARCH" OnClick="btn_search_Click1" ></asp:Button>

                </td>
                <td>
                    <asp:Button ID="btn_update" CssClass="myButton" runat="server" Text="UPDATE" OnClick="btn_update_Click1" ></asp:Button>

                </td>
                <td>
                    <asp:Button ID="btn_delete" CssClass="myButton" runat="server" Text="DELETE" OnClick="btn_delete_Click1" ></asp:Button>
                </td>

            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="lbl_result" runat="server"></asp:Label>
                </td>
            </tr>
            
        </table>

       </center>
        </form>
    </div>
</asp:Content>
