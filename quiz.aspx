<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="quiz.aspx.cs" Inherits="HealthCare.quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <ul class="nav navbar-nav navbar-right">
					        <li><a href="index.aspx">Medics</a></li>
					        <li><a href="diseas.aspx">Disease</a></li>
					        <li><a href="doctor.aspx">Doctor</a>
					        </li>
					        <li><a href="calculator.aspx">Calculators</a></li>
							<li class="active"><a href="quiz.aspx">Quiz's</a></li>
							<li><a href="survey.aspx">Survey</a></li>
							<li><a href="admin.aspx">ADMIN</a></li>
	 </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .iftikhar
        {
            color:red;
        }
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

    </style>
    <div id="login">
    <form runat="server">
   <center>     <table>
            <tr>
                <td>WHICH MEDICINE IS USED FOR HEADCHE?</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="rdo_ans1" runat="server">
                        <asp:ListItem>PANADOL</asp:ListItem>
                        <asp:ListItem>BASCOPAN</asp:ListItem>
                        <asp:ListItem>LYXOTINAL</asp:ListItem>
                        <asp:ListItem>AVIL</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" CssClass="myButton" OnClick="Button1_Click" />
                    <br />
                    <asp:Label ID="lbl_result" CssClass="iftikhar" runat="server"></asp:Label>
                </td>
            </tr>










            <tr>
                <td>WHICH MEDICINE IS USED FOR DEPRESSION?</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="rdo_ans2" runat="server">
                        <asp:ListItem>DISPRIN</asp:ListItem>
                        <asp:ListItem>BASCOPAN</asp:ListItem>
                        <asp:ListItem>ALP</asp:ListItem>
                        <asp:ListItem>AVIL</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                <td>
                    <asp:Button ID="btn_resultone" runat="server" CssClass="myButton" OnClick="btn_resultone_Click" Text="SUBMIT" />
                    <br />
                    <asp:Label ID="lbl_result1" CssClass="iftikhar" runat="server"></asp:Label>
                </td>
            </tr>





            <tr>
                <td>WHICH MEDICINE IS USED FOR SLEEP?</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="rdo_ans3" runat="server">
                        <asp:ListItem>PANADOL</asp:ListItem>
                        <asp:ListItem>BASCOPAN</asp:ListItem>
                        <asp:ListItem>LYXOTINAL</asp:ListItem>
                        <asp:ListItem>AVIL</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                <td>
                    <asp:Button ID="btn_submittwo" runat="server" CssClass="myButton" OnClick="btn_submittwo_Click" Text="SUBMIT" />
                    <br />
                    <asp:Label ID="lbl_result2" CssClass="iftikhar" runat="server"></asp:Label>
                </td>
            </tr>
            
        </table> </center>
    </form>
        </div> 
</asp:Content>
