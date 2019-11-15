<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="HealthCare.survey" %>
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
							<li class="active"><a href="survey.aspx">Survey</a></li>
							<li><a href="admin.aspx">ADMIN</a></li>
	 </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #iftikhar
        {
            background-color:aliceblue;
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
        .auto-style1 {
            width: 378px;
        }
        #RadioButtonList2
        {
            color:black;
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
.iftikhar
{
    color:red;
}
    </style>

    <center >
        <div id="iftikhar">

        
        
            <form runat="server">
                <table id="login">
                    <tr>
                        <th class="auto-style1">
                            What is the best way to keep Health Fyt?
                        </th>
                        
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:RadioButtonList ID="rdo_btn_ans" runat="server" Width="248px">
                                <asp:ListItem>Proper Routine</asp:ListItem>
                                <asp:ListItem>Excersie</asp:ListItem>
                                <asp:ListItem>low caloric Food</asp:ListItem>
                                <asp:ListItem>Smile</asp:ListItem>
                            </asp:RadioButtonList>
                            <br />
                            <br />
                            <asp:Button ID="btn_one" runat="server" CssClass="myButton" Text="SUBMIT" OnClick="btn_one_Click" />
                            <br />
                            <asp:Label ID="lbl_result1" CssClass="iftikhar" runat="server"></asp:Label>
                            
                            <asp:Label ID="lbl_1extends" runat="server" CssClass="iftikhar" Text="% People Preffer Selected Answer"></asp:Label>
                        </td> 
                    </tr>
                    </br>
                    <tr>
                        <th>
                            How Many Times You Go for General Health Checkup In 3 Months?
                        </th>
                     </tr>
                    <tr>
                        <td>

                            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                <asp:ListItem>1 to 2 Times</asp:ListItem>
                                <asp:ListItem>3 to 4 Times</asp:ListItem>
                                <asp:ListItem>5 to 6 Times</asp:ListItem>
                                <asp:ListItem>7 to 8 Times</asp:ListItem>
                            </asp:RadioButtonList>

                            <br />
                            <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="SUBMIT" OnClick="Button1_Click" />
                            <br />
                            <asp:Label ID="lbl_result2" CssClass="iftikhar" runat="server"></asp:Label>
                            <asp:Label ID="Lbl_2extends" CssClass="iftikhar" runat="server" Text="% Do The Same Thing"></asp:Label>

                        &nbsp;</td>
                    </tr>



                    <tr>
                        <th>
                           Do You Have Any Of These Disease?
                        </th>
                     </tr>
                    <tr>
                        <td>

                            

                            <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                <asp:ListItem>Suger</asp:ListItem>
                                <asp:ListItem>Hepatitus</asp:ListItem>
                                <asp:ListItem>Heart Disease</asp:ListItem>
                                <asp:ListItem>Depression</asp:ListItem>
                            </asp:RadioButtonList>

                            

                            <br />
                            <br />
                            <asp:Button ID="Button2" runat="server" CssClass="myButton" Text="SUBMIT" OnClick="Button2_Click" />
                            <br />
                            <asp:Label ID="lbl_result3" CssClass="iftikhar" runat="server"></asp:Label>
                            <asp:Label ID="lbl_3extends" CssClass="iftikhar" runat="server" Text="% Have This Disease"></asp:Label>
                            

                        </td>
                    </tr>



                    <tr>
                        <th>
                           Do You Have First Aid Kit In Your Home?
                        </th>
                     </tr>
                    <tr>
                        <td>

                            <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList>

                            <br />
                            <br />
                            <asp:Button ID="Button4" runat="server" CssClass="myButton" Text="SUBMIT" OnClick="Button4_Click" />
                            <br />
                            <asp:Label ID="lbl_result4" CssClass="iftikhar" runat="server"></asp:Label>
                            <asp:Label ID="Lbl_4extends" CssClass="iftikhar" runat="server" Text="% People Selected This"></asp:Label>
                        </td>
                    </tr>
                    </table>
                
                
            </form>
        </div>
    </center>
</asp:Content>
